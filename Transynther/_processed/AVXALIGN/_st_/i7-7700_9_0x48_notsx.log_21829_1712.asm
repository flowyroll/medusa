.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a4da, %r10
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r10), %r14b
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x7702, %rsi
lea addresses_D_ht+0x125aa, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $21480, %r9
mov $60, %rcx
rep movsl
nop
inc %r8
lea addresses_WC_ht+0x1056a, %r9
nop
nop
nop
nop
nop
lfence
mov (%r9), %r14d
inc %r14
lea addresses_UC_ht+0xc48a, %r10
clflush (%r10)
nop
and $12728, %r14
movw $0x6162, (%r10)
nop
nop
nop
nop
xor $40228, %r10
lea addresses_WC_ht+0x1453a, %r9
and %r10, %r10
mov (%r9), %r14w
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x480a, %rsi
lea addresses_WC_ht+0x1556, %rdi
cmp $61883, %r14
mov $108, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x16d0a, %rcx
nop
nop
add $49436, %r8
mov (%rcx), %r9
nop
sub %r8, %r8
lea addresses_D_ht+0xd4a, %r14
nop
nop
nop
xor %r9, %r9
mov (%r14), %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x550a, %rsi
lea addresses_A_ht+0x670a, %rdi
nop
nop
xor %rbp, %rbp
mov $59, %rcx
rep movsw
nop
nop
dec %rdi
lea addresses_UC_ht+0x1dcda, %rsi
lea addresses_UC_ht+0xfe0a, %rdi
sub %rbp, %rbp
mov $31, %rcx
rep movsw
nop
cmp $53921, %rbp
lea addresses_WC_ht+0x1edca, %rsi
lea addresses_WC_ht+0xfe0a, %rdi
clflush (%rdi)
nop
nop
nop
and $63995, %r8
mov $87, %rcx
rep movsw
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x1525a, %r14
add $6924, %r10
movw $0x6162, (%r14)
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x11f8a, %r8
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1960a, %rdi
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rdi)
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_normal+0x17c0a, %r9
nop
xor %r12, %r12
movb $0x51, (%r9)
nop
and %rsi, %rsi

// Store
lea addresses_WC+0xc36e, %rsi
dec %r11
movb $0x51, (%rsi)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_RW+0x15f0a, %rbx
nop
nop
nop
nop
nop
cmp $26325, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%rbx)
nop
xor %r12, %r12

// Store
lea addresses_normal+0x162e9, %r11
nop
and %rbx, %rbx
movw $0x5152, (%r11)
nop
nop
nop
nop
sub $19770, %r12

// Load
lea addresses_WT+0x960a, %r12
nop
nop
nop
sub %r11, %r11
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rax
nop
and $13699, %r12

// Store
mov $0x60cf30000000820, %rbx
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rbx)
nop
sub $8289, %r9

// Store
lea addresses_US+0xa786, %r15
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
sub $41631, %rbx

// Faulty Load
lea addresses_normal+0x17e0a, %r11
nop
dec %rsi
movb (%r11), %r15b
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
