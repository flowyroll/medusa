.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5e22, %rax
nop
nop
and %r13, %r13
mov (%rax), %rbp
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x1d3ec, %rsi
lea addresses_D_ht+0xef6c, %rdi
nop
xor $24239, %rbx
mov $1, %rcx
rep movsb
nop
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x263c, %rsi
lea addresses_UC_ht+0x15b2c, %rdi
nop
nop
add $65293, %r13
mov $41, %rcx
rep movsw
nop
xor $18149, %rax
lea addresses_WC_ht+0x1bd4c, %rax
nop
nop
nop
cmp $28254, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rax
vmovntdq %ymm5, (%rax)
nop
nop
nop
nop
dec %r13
lea addresses_UC_ht+0xc2ec, %rax
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x33ec, %rsi
lea addresses_normal_ht+0x7369, %rdi
nop
nop
nop
nop
cmp $8580, %rax
mov $111, %rcx
rep movsb
add $34120, %rbp
lea addresses_A_ht+0x118ec, %rax
nop
nop
nop
cmp $49056, %rbp
mov (%rax), %rcx
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x1f88, %rax
nop
nop
nop
nop
nop
and %rbx, %rbx
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
xor $31566, %r13
lea addresses_A_ht+0x129f6, %r8
nop
nop
nop
nop
inc %rbx
mov (%r8), %esi
nop
nop
xor $39599, %rsi
lea addresses_UC_ht+0x1d5ec, %rbp
nop
cmp %r8, %r8
movb $0x61, (%rbp)
nop
nop
and $41802, %r13
lea addresses_D_ht+0xa3a, %r13
nop
nop
xor $25240, %rsi
movb (%r13), %r8b
nop
nop
nop
nop
and $30176, %rbp
lea addresses_normal_ht+0x1e2ec, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x127a4, %rdi
and %rsi, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
and $33063, %r8
lea addresses_D_ht+0xf9ec, %r13
nop
nop
and $370, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r13)
nop
nop
mfence
lea addresses_UC_ht+0x48a8, %rax
nop
nop
nop
nop
nop
sub $44913, %rbx
movb $0x61, (%rax)
nop
nop
nop
and $36028, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x16c, %r11
nop
nop
and $53677, %r15
mov (%r11), %r13
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0x1869c, %rdx
nop
nop
sub %rcx, %rcx
movb $0x51, (%rdx)
nop
nop
dec %r9

// REPMOV
lea addresses_RW+0x135ec, %rsi
lea addresses_WT+0x41ec, %rdi
sub %r11, %r11
mov $41, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_normal+0x19f60, %rcx
clflush (%rcx)
nop
nop
sub $45706, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
cmp %r13, %r13

// REPMOV
lea addresses_PSE+0x119ac, %rsi
lea addresses_PSE+0x15dec, %rdi
nop
nop
sub $16011, %r11
mov $121, %rcx
rep movsb
nop
add %rdx, %rdx

// Store
lea addresses_RW+0x4c64, %r13
nop
nop
nop
nop
sub $26459, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r13)

// Exception!!!
nop
nop
nop
mov (0), %rdx
nop
nop
nop
nop
nop
cmp $41231, %rdx

// Store
lea addresses_normal+0x41ec, %r9
nop
nop
nop
cmp $8180, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
sub $42028, %rcx

// Faulty Load
lea addresses_A+0xb9ec, %rcx
nop
nop
nop
nop
sub $37428, %r13
mov (%rcx), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': True, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
