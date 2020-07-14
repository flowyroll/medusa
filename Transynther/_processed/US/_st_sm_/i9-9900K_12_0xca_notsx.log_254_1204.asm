.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14e55, %rdx
nop
nop
sub %rbx, %rbx
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
cmp $26946, %rsi
lea addresses_normal_ht+0xef35, %r12
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%r12)
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x12795, %rdi
nop
nop
nop
cmp %r11, %r11
mov (%rdi), %r12w
and %rdi, %rdi
lea addresses_D_ht+0xeab5, %r12
nop
inc %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_US+0x6735, %rsi
nop
nop
nop
nop
nop
and $60071, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movntdq %xmm4, (%rsi)
nop
nop
nop
nop
and $39441, %r9

// Store
lea addresses_US+0xc57c, %r15
nop
nop
sub $35911, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
inc %r14

// Store
lea addresses_normal+0x1610d, %rbx
clflush (%rbx)
nop
dec %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rbx)
xor %r15, %r15

// Faulty Load
lea addresses_US+0x6735, %rbx
nop
nop
nop
nop
sub %rdx, %rdx
movb (%rbx), %r14b
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'58': 254}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
