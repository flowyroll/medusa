.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x106cc, %rsi
lea addresses_normal_ht+0x102bc, %rdi
nop
nop
nop
nop
add $6086, %r14
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0xe71c, %rbp
nop
nop
nop
nop
lfence
movl $0x61626364, (%rbp)
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x1b6cc, %rsi
lea addresses_A_ht+0x17ecc, %rdi
nop
cmp %r11, %r11
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $45938, %r13
lea addresses_UC_ht+0xc2cc, %r14
clflush (%r14)
sub %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
and $33317, %r11
lea addresses_UC_ht+0x199cc, %rsi
lea addresses_UC_ht+0x974c, %rdi
nop
cmp $42465, %r11
mov $48, %rcx
rep movsb
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0xcacc, %rcx
inc %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x10d0c, %r14
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
sub %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x1efc, %rsi
lea addresses_RW+0x36cc, %rdi
nop
nop
nop
add %r14, %r14
mov $35, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $469, %rax

// Store
lea addresses_normal+0x156cc, %r12
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%r12)
nop
nop
nop
nop
add $54501, %rsi

// Faulty Load
lea addresses_RW+0x36cc, %rax
clflush (%rax)
nop
nop
xor %rbp, %rbp
movb (%rax), %r12b
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_RW'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_US'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'00': 40}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
