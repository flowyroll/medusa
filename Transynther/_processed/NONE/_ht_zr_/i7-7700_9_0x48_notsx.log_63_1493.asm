.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x17973, %rsi
lea addresses_A_ht+0x16851, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $90, %rcx
rep movsl
xor $3929, %r10
lea addresses_WT_ht+0x19c73, %rsi
lea addresses_WT_ht+0xd6f7, %rdi
nop
nop
nop
dec %rbx
mov $122, %rcx
rep movsw
sub %rcx, %rcx
lea addresses_D_ht+0x1cf3, %rsi
lea addresses_WC_ht+0x22f3, %rdi
nop
nop
cmp $60205, %rdx
mov $89, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x105f3, %rsi
nop
nop
nop
nop
inc %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x140f3, %rsi
lea addresses_WT_ht+0x176f3, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $67, %rcx
rep movsq
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x1a893, %rsi
nop
cmp %rcx, %rcx
mov (%rsi), %r11d
nop
nop
nop
nop
add $27109, %r11
lea addresses_A_ht+0x1a673, %rbx
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rbx)
nop
nop
nop
cmp $37024, %r10
lea addresses_WT_ht+0xccf3, %rdi
nop
nop
sub $63834, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
sub %rsi, %rsi
lea addresses_A_ht+0x17ef3, %rbx
nop
nop
dec %rdx
mov (%rbx), %r10d
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1b3f3, %rsi
lea addresses_D_ht+0x6cc3, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $84, %rcx
rep movsq
nop
nop
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x413, %r12
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%r12)
nop
nop
nop
sub $52555, %rdx

// Store
lea addresses_WC+0x7bb3, %r8
nop
nop
nop
add $13828, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r8)
nop
nop
and %rdx, %rdx

// Store
lea addresses_WC+0xa73, %rsi
cmp %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_A+0xecf3, %r12
nop
nop
nop
nop
xor %rbx, %rbx
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'45': 7, '49': 19, '00': 37}
00 49 00 49 49 00 00 49 49 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 45 49 00 00 00 00 00 49 49 49 49 00 45 45 49 00 00 49 45 45 00 45 00 00 45 49 00 00 00 00 00 49 49 49
*/
