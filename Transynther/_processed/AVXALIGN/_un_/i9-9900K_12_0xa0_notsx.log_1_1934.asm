.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rdx
push %rsi
lea addresses_WC_ht+0x16ac3, %r12
nop
nop
nop
sub %r8, %r8
movb $0x61, (%r12)
nop
nop
nop
nop
cmp $49064, %rsi
lea addresses_D_ht+0x210b, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x61626364, (%r9)
nop
nop
sub $25914, %r9
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_normal+0x17e3, %rbx
nop
nop
sub $62834, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
and $50200, %r13

// Store
lea addresses_WC+0x1aa83, %rdx
nop
nop
nop
inc %r9
movb $0x51, (%rdx)
dec %rdi

// Store
lea addresses_PSE+0x7538, %r10
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0x1df83, %r11
nop
nop
nop
nop
nop
xor %rdi, %rdi
movaps (%r11), %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %r10
and $0xff, %r10
shlq $12, %r10
mov (%r10,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'29': 1}
29
*/
