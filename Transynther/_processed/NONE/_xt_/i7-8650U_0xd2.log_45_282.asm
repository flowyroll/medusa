.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x1ad20, %r8
nop
nop
cmp $11507, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
cmp $55286, %r15

// Load
lea addresses_UC+0x17e20, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp $31000, %rdi
movups (%rdx), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
inc %rcx

// Faulty Load
lea addresses_normal+0x11720, %r15
nop
nop
nop
nop
add $52816, %r11
mov (%r15), %cx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'34': 45}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
