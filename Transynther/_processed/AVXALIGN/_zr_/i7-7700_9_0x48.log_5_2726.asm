.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rdi
push %rsi
lea addresses_normal_ht+0x6085, %r12
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xe7d, %rsi
nop
nop
nop
nop
nop
and %r11, %r11
movb $0x61, (%rsi)
dec %r8
lea addresses_WT_ht+0x10e9b, %rdi
nop
nop
sub $7593, %r12
movl $0x61626364, (%rdi)
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0xb8d5, %rsi
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm1
and $0xffffffffffffffc0, %rsi
vmovaps %ymm1, (%rsi)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_WT+0x1ce15, %rax
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movaps %xmm7, (%rax)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_A+0x13f79, %rbx
add %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
and $51748, %rbx

// Store
mov $0xa5d, %rax
clflush (%rax)
nop
nop
xor $10734, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rax)
nop
nop
nop
inc %r9

// Store
lea addresses_WC+0xcc1d, %rbp
nop
nop
nop
nop
sub $62857, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rbp)
xor $199, %rsi

// Faulty Load
lea addresses_A+0x8c9d, %r12
nop
and $32518, %r11
vmovntdqa (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'00': 5}
00 00 00 00 00
*/
