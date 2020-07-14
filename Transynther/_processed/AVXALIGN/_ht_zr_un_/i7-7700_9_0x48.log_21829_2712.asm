.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x60ff, %rbp
nop
nop
xor %r10, %r10
mov (%rbp), %eax
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1007f, %rcx
nop
nop
xor $34501, %rax
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
nop
and $52852, %r10
lea addresses_normal_ht+0x1ac13, %rsi
lea addresses_A_ht+0x1a385, %rdi
nop
nop
nop
nop
dec %rax
mov $112, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x1aacf, %rax
nop
nop
nop
dec %r14
movb $0x61, (%rax)
nop
sub %r14, %r14
lea addresses_WC_ht+0x1e1ff, %rax
nop
nop
nop
nop
nop
cmp %r14, %r14
mov (%rax), %rdi
nop
nop
nop
nop
sub $25545, %rax
lea addresses_A_ht+0x13b3f, %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r10), %rax
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x182ff, %rsi
lea addresses_UC_ht+0x1887f, %rdi
nop
cmp %r15, %r15
mov $21, %rcx
rep movsb
nop
nop
nop
nop
sub $53991, %rax
lea addresses_A_ht+0xb97f, %r15
nop
cmp $46359, %rdi
movl $0x61626364, (%r15)
nop
sub $32309, %r15
lea addresses_normal_ht+0x47ff, %r10
dec %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r10)
nop
nop
xor $60681, %rax
lea addresses_WT_ht+0x13dcb, %rsi
lea addresses_UC_ht+0x7767, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $97, %rcx
rep movsq
nop
and $18797, %rsi
lea addresses_UC_ht+0x2683, %rsi
lea addresses_A_ht+0x11b7f, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $88, %rcx
rep movsb
nop
inc %r15
lea addresses_normal_ht+0x19f7f, %rsi
lea addresses_WT_ht+0x10dff, %rdi
nop
nop
dec %r14
mov $71, %rcx
rep movsw
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x8393, %rcx
nop
nop
nop
nop
and %rbp, %rbp
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1c9ff, %rcx
nop
nop
xor $40516, %rax
movb (%rcx), %r14b
nop
nop
nop
nop
nop
xor $55594, %rbp
lea addresses_D_ht+0x37ff, %rsi
lea addresses_D_ht+0xc1ff, %rdi
nop
nop
nop
and $54805, %rbp
mov $13, %rcx
rep movsw
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rsi

// Faulty Load
lea addresses_RW+0x199ff, %r14
nop
nop
sub %rbx, %rbx
movntdqa (%r14), %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'08': 1, '47': 2, '46': 1378, '05': 1, '00': 2741, '49': 13579, '44': 4125, 'fa': 2}
44 49 44 49 44 49 49 49 49 00 49 00 49 44 49 44 49 49 49 49 00 49 46 49 44 49 44 49 49 00 49 00 49 44 49 49 49 49 00 49 46 49 44 49 44 49 49 00 49 44 49 44 49 49 49 00 49 44 49 49 49 49 00 49 46 49 44 49 44 49 44 49 49 00 49 46 49 44 49 44 49 49 49 44 49 44 49 49 00 49 00 49 44 49 44 49 49 00 49 44 49 49 49 49 49 46 49 44 49 49 00 49 46 49 44 49 49 49 49 49 00 49 44 49 44 49 44 49 49 00 49 46 49 46 49 44 49 44 49 49 46 49 44 49 49 00 49 46 49 44 49 44 49 49 49 49 00 49 44 49 49 00 49 46 49 44 49 44 49 49 00 49 46 49 44 49 44 49 49 49 46 49 44 49 00 49 00 49 44 49 49 49 49 00 49 44 49 49 00 49 00 49 46 49 44 49 00 49 00 49 46 49 44 49 49 00 49 44 49 44 49 49 49 49 00 49 46 49 44 49 49 00 49 44 49 49 49 49 00 49 46 49 44 49 49 49 44 49 49 00 49 46 49 44 49 44 49 49 00 49 46 49 44 49 49 00 49 46 49 46 49 44 49 49 49 49 49 49 00 49 44 49 44 49 49 00 49 46 49 46 49 44 49 49 49 49 00 49 44 49 44 49 49 00 49 46 49 44 49 44 49 49 00 49 44 49 44 49 49 49 49 44 49 49 49 49 00 49 44 49 44 00 49 46 49 44 49 49 49 00 49 46 49 44 49 49 49 49 00 49 46 49 44 49 49 00 49 44 49 44 49 49 49 46 49 44 49 44 49 49 49 49 44 49 49 00 49 00 49 44 49 49 00 49 44 49 44 49 44 49 49 00 49 44 49 49 00 49 00 49 00 49 46 49 49 49 00 49 44 49 44 49 49 00 49 44 49 44 49 49 49 49 49 44 49 44 00 49 46 49 44 49 44 49 49 49 49 00 49 44 49 44 49 44 49 49 46 49 44 49 44 49 00 49 00 49 44 49 44 49 49 49 49 46 49 44 49 44 49 49 00 49 46 49 44 49 44 49 49 00 49 46 49 44 49 44 49 44 49 49 49 44 49 49 00 49 44 49 00 49 00 49 46 49 46 49 44 49 49 00 49 46 49 44 49 49 00 49 00 49 44 49 44 49 44 49 49 00 49 46 49 46 49 49 49 00 49 46 49 44 49 44 49 00 49 46 49 44 49 49 49 49 46 49 44 49 49 49 49 49 46 49 44 49 44 49 49 00 49 00 49 44 49 44 49 49 49 49 00 49 46 49 44 49 44 49 49 49 49 46 49 44 49 49 00 49 00 49 44 49 49 49 49 46 49 44 49 44 49 49 49 49 00 49 44 49 00 49 46 49 44 49 49 49 49 00 49 00 49 44 49 00 49 49 49 00 49 46 49 44 49 49 49 44 49 49 00 49 49 46 49 44 49 44 49 49 00 49 00 49 46 49 44 49 44 49 49 00 49 00 49 00 49 44 49 49 49 00 49 44 49 44 49 49 00 49 46 49 44 49 49 49 49 00 49 49 44 49 49 49 49 44 49 44 49 44 49 49 00 49 44 49 44 49 49 00 49 46 49 44 49 49 00 49 44 49 49 49 49 46 49 44 49 49 49 49 46 49 44 49 49 49 00 49 46 49 44 49 49 49 49 00 49 44 49 44 49 49 00 49 44 49 49 49 46 49 44 49 49 49 49 00 49 44 49 44 49 49 49 49 46 49 44 49 49 00 49 46 49 44 49 44 49 44 49 49 49 00 49 46 49 44 49 44 49 44 49 49 49 49 49 44 49 44 49 49 49 49 00 49 44 49 49 00 49 00 49 44 49 49 49 46 49 44 49 44 49 49 00 49 44 49 49 49 49 00 49 44 49 49 49 49 00 49 44 49 44 49 49 00 49 00 49 44 49 49 49 49 46 49 44 49 49 49 49 46 49 44 49 44 49 49 00 49 44 49 44 49 49 49 46 49 44 49 44 49 49 49 46 49 44 49 49 00 49 00 49 44 49 49 49 00 49 46 49 44 49 49 49 49 00 49 46 49 44 49 49 49 49 49 46 49 44 49 49 49 49 00 49 44 49 44 49 49 00 49 44 49 49 00 49 00 49 46 49 46 49 44 49 49 00 49 46 49 44 49 49 49 49 00 49 44 49 49 49 49 46 49 44 49 49 00 49 00 49 00 49 44 49 44 49 49 49 49 49 49 00 49 46 49
*/
