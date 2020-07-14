.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x530f, %r14
nop
xor %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm3
and $0xffffffffffffffc0, %r14
movaps %xmm3, (%r14)
nop
nop
nop
nop
sub $8480, %rax
lea addresses_A_ht+0x1ae0f, %rsi
lea addresses_UC_ht+0x9fc0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $80, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0xc48f, %rsi
lea addresses_WC_ht+0x9f5f, %rdi
clflush (%rdi)
nop
xor $56261, %r8
mov $62, %rcx
rep movsw
cmp $15959, %r8
lea addresses_UC_ht+0x1da0f, %rsi
nop
xor $15935, %r9
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
add %r8, %r8
lea addresses_A_ht+0x1789f, %rsi
lea addresses_WT_ht+0x1e80f, %rdi
nop
nop
nop
nop
dec %r8
mov $85, %rcx
rep movsw
xor $36542, %rcx
lea addresses_UC_ht+0x3ed7, %rsi
lea addresses_normal_ht+0x15c0f, %rdi
nop
nop
nop
nop
cmp $16277, %rbp
mov $67, %rcx
rep movsb
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x340f, %rax
clflush (%rax)
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rax)
and $10862, %rbp
lea addresses_UC_ht+0x17e0f, %r9
nop
and %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %r9
movaps %xmm6, (%r9)
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1fd2f, %r11
nop
nop
sub $9343, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r11)
nop
nop
dec %r10

// Store
mov $0x3c1f600000000b0f, %r10
nop
nop
nop
nop
and $55767, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%r10)
nop
nop
nop
cmp $4050, %r9

// Store
lea addresses_D+0x215f, %rdx
nop
add %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovntdq %ymm1, (%rdx)
nop
nop
nop
nop
sub $63971, %r13

// Store
lea addresses_D+0x1010f, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub %rbx, %rbx
movb $0x51, (%rsi)
nop
nop
cmp $52133, %rdx

// Store
lea addresses_RW+0x1fe5f, %r9
nop
inc %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r9)
and %r9, %r9

// Store
lea addresses_D+0x8f8f, %r9
nop
nop
nop
cmp $51993, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r9)

// Exception!!!
nop
nop
mov (0), %r10
cmp %rbx, %rbx

// Faulty Load
lea addresses_D+0x16e0f, %rbx
nop
nop
and %rsi, %rsi
movb (%rbx), %r13b
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'36': 72}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
