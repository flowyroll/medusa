.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1044f, %r10
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r10)
xor %r8, %r8
lea addresses_WC_ht+0x1d839, %rbp
nop
and %r11, %r11
mov (%rbp), %esi
nop
nop
nop
nop
nop
and $41855, %r11
lea addresses_WT_ht+0x3d4d, %rbx
nop
nop
nop
nop
add %rdx, %rdx
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
sub $8171, %rbx
lea addresses_WC_ht+0xefef, %rsi
lea addresses_UC_ht+0x152cf, %rdi
clflush (%rdi)
nop
nop
dec %r11
mov $37, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0xbd4b, %r10
nop
nop
dec %rdi
movb (%r10), %r8b
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x409f, %rbp
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm3, (%rbp)
nop
nop
add $9426, %rbp
lea addresses_WT_ht+0x1cbcf, %rsi
lea addresses_WT_ht+0x1b0cf, %rdi
nop
nop
nop
nop
cmp $62308, %rbp
mov $60, %rcx
rep movsl
nop
add %rbp, %rbp
lea addresses_normal_ht+0xbc17, %rsi
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1aacf, %rsi
lea addresses_normal_ht+0x1d76f, %rdi
inc %rbp
mov $105, %rcx
rep movsq
nop
nop
and $17096, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdx

// Load
mov $0x7ab98200000002cf, %r9
nop
inc %r14
movb (%r9), %r13b
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_D+0x6ccf, %rdx
nop
cmp $59621, %r14
movl $0x51525354, (%rdx)
xor $7097, %r14

// Store
lea addresses_D+0x16ccf, %r14
clflush (%r14)
nop
nop
add $6094, %rcx
movw $0x5152, (%r14)
nop
nop
nop
cmp $25148, %r9

// Faulty Load
lea addresses_D+0xb0cf, %rcx
nop
nop
nop
nop
nop
and %r8, %r8
movb (%rcx), %r9b
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 9}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'36': 6}
36 36 36 36 36 36
*/
