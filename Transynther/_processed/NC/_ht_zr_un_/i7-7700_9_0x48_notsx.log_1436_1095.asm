.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x79bd, %rsi
lea addresses_WC_ht+0x191d3, %rdi
nop
nop
nop
nop
inc %rbp
mov $25, %rcx
rep movsl
nop
add %r10, %r10
lea addresses_UC_ht+0xa217, %rdi
nop
nop
nop
xor $59482, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
add $29477, %r14
lea addresses_UC_ht+0x10713, %rsi
lea addresses_normal_ht+0x18877, %rdi
nop
xor %r11, %r11
mov $127, %rcx
rep movsq
xor %r14, %r14
lea addresses_normal_ht+0x1cbb, %rcx
nop
nop
nop
nop
nop
dec %r14
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
nop
add $1002, %rcx
lea addresses_A_ht+0x13dd3, %rsi
lea addresses_WC_ht+0xf053, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $13916, %r8
mov $43, %rcx
rep movsw
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x41d3, %r10
nop
nop
nop
nop
nop
and $9049, %r8
movb $0x61, (%r10)
nop
inc %rsi
lea addresses_A_ht+0xb9d3, %r14
nop
nop
and %r8, %r8
mov (%r14), %ebp
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0xe1d3, %r11
clflush (%r11)
nop
nop
nop
xor $35796, %r10
mov (%r11), %r8w
nop
nop
nop
nop
cmp $55496, %rsi
lea addresses_WT_ht+0xdf07, %rdi
nop
nop
nop
nop
nop
dec %rcx
movb $0x61, (%rdi)
inc %r14
lea addresses_WT_ht+0xe3d3, %rdi
add $60763, %r8
movb $0x61, (%rdi)
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0xb4bb, %r14
nop
nop
nop
nop
nop
and $21745, %r11
movw $0x6162, (%r14)
nop
nop
nop
cmp $24403, %rdi
lea addresses_WC_ht+0x130d3, %r10
nop
nop
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%r10)
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x89d3, %rsi
nop
nop
xor $15366, %rcx
movb (%rsi), %r10b
nop
nop
xor $858, %rsi
lea addresses_A_ht+0x199d3, %r8
nop
nop
nop
nop
xor $42362, %r14
mov (%r8), %rdi
nop
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0xa293, %rax
nop
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rax)
nop
nop
nop
nop
and $46612, %rdi

// Store
lea addresses_WT+0x116d3, %r15
nop
dec %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
nop
xor $14605, %rdi

// Faulty Load
mov $0x54240700000009d3, %r15
clflush (%r15)
nop
dec %r11
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 10}}
{'02': 64, '44': 352, '06': 1, '49': 487, '00': 532}
06 49 49 44 49 44 49 49 49 44 49 49 49 49 44 49 49 44 49 44 44 44 00 49 49 49 49 49 44 44 49 49 49 49 49 44 49 44 49 49 44 49 44 49 49 49 49 44 49 49 44 44 49 49 49 44 44 44 00 49 49 44 49 49 49 49 49 49 49 44 49 44 44 44 49 49 49 49 49 49 44 49 49 49 44 49 49 49 49 44 49 44 44 44 44 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 44 44 44 49 44 44 49 44 49 49 49 49 44 49 49 49 44 44 49 49 44 49 44 49 44 44 00 44 00 44 49 44 49 49 44 00 49 00 49 44 44 44 49 44 00 49 00 44 49 00 00 00 00 49 44 49 49 49 44 49 49 49 00 49 00 00 00 44 02 44 00 49 00 49 00 00 44 44 49 00 44 00 44 02 44 00 00 44 00 49 49 49 02 00 00 49 49 44 00 44 00 49 00 00 00 02 00 02 00 49 00 49 49 00 49 49 49 44 49 00 49 00 44 49 44 00 44 44 44 44 44 49 49 00 49 00 44 00 00 00 44 00 00 44 00 00 49 44 49 49 00 00 00 49 00 44 00 49 49 00 49 44 00 00 49 00 00 00 49 49 49 49 00 00 49 00 02 00 44 44 00 49 49 49 00 00 44 49 00 00 49 44 00 00 49 49 49 49 00 49 00 49 00 44 44 44 44 49 00 44 49 49 00 49 49 00 49 44 49 00 00 49 49 00 00 49 00 49 49 49 00 00 49 44 49 02 49 00 02 00 00 02 44 44 44 44 00 44 49 44 44 44 00 44 00 00 00 49 00 44 00 00 44 00 00 00 44 49 49 49 00 00 00 44 00 44 49 00 49 44 44 44 49 49 00 00 44 49 00 49 49 00 44 44 49 49 44 02 49 49 00 02 49 44 44 00 44 02 00 00 49 44 44 00 00 00 00 00 44 49 00 00 00 44 00 49 49 00 49 00 49 49 49 49 00 00 00 44 02 00 44 44 44 49 49 00 49 02 02 44 44 49 00 00 00 44 00 00 44 00 00 44 02 44 49 44 49 49 44 44 49 00 00 44 00 00 00 00 49 49 00 44 44 00 00 44 00 44 00 00 44 00 00 00 44 44 44 44 00 49 00 00 00 49 49 00 44 49 49 44 44 49 49 00 00 00 00 00 00 49 00 00 00 44 49 02 44 49 00 00 00 00 44 44 00 44 44 00 00 00 00 44 00 49 00 49 49 44 49 49 49 00 00 00 44 00 44 00 44 44 44 44 00 49 02 00 44 00 49 44 00 00 44 49 49 44 00 00 00 44 00 00 00 00 00 00 44 49 00 49 00 02 49 49 49 49 02 49 49 00 00 00 00 00 00 49 44 00 49 44 49 44 49 49 00 44 49 44 00 00 49 49 00 00 44 00 49 49 44 00 00 49 44 44 49 49 00 44 00 44 00 00 00 00 00 00 49 00 00 00 44 44 44 44 44 00 44 00 44 44 00 44 00 44 49 00 00 49 00 02 49 49 49 44 44 00 44 44 49 44 49 44 44 49 00 00 00 44 49 49 02 00 00 49 00 49 44 00 00 49 49 00 49 49 00 00 49 00 44 00 00 49 44 49 00 00 49 44 49 02 00 02 44 44 02 49 49 00 00 44 49 49 00 49 00 44 44 44 49 49 44 00 00 00 00 44 49 44 44 44 49 44 00 44 00 44 49 00 49 00 44 00 00 44 44 49 00 00 49 00 49 49 44 00 44 44 02 49 00 00 49 44 44 49 00 49 49 02 02 44 49 00 44 00 44 00 00 49 49 44 49 49 00 49 49 49 44 49 44 00 49 02 00 44 49 49 49 44 44 49 02 49 02 49 02 44 49 00 00 02 00 00 00 00 44 49 49 00 49 00 02 44 49 00 49 00 49 00 49 49 00 02 00 00 49 49 49 00 00 44 44 49 49 44 00 44 00 02 49 49 00 49 44 44 02 44 49 44 49 00 49 49 49 00 00 02 44 00 44 00 00 49 49 00 49 49 49 44 44 00 00 02 49 00 00 49 44 00 02 00 00 00 49 49 00 00 02 02 02 00 00 44 00 00 44 49 49 49 49 00 00 00 00 00 44 00 00 49 00 44 44 49 44 00 02 00 49 49 00 00 00 00 00 49 49 00 00 49 44 49 49 00 49 49 49 00 49 49 00 44 00 49 49 49 49 00 00 49 49 49 49 02 49 44 49
*/
