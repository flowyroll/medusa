.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rdi
lea addresses_A_ht+0x10045, %r15
nop
nop
and $5414, %r8
movups (%r15), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
inc %r11
pop %rdi
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x1ee45, %rsi
lea addresses_PSE+0xc65, %rdi
nop
add %rdx, %rdx
mov $43, %rcx
rep movsl
nop
nop
nop
and $18367, %r14

// Store
lea addresses_US+0x11345, %rdx
nop
nop
cmp $62648, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movntdq %xmm7, (%rdx)
nop
nop
nop
nop
add $26697, %rsi

// Store
lea addresses_normal+0x19245, %rcx
clflush (%rcx)
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
xor $17013, %rdx

// Store
mov $0x545, %rcx
xor %r8, %r8
movb $0x51, (%rcx)
nop
nop
sub $36318, %rcx

// Faulty Load
lea addresses_normal+0x15845, %rdx
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rdx), %edi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'34': 339}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
