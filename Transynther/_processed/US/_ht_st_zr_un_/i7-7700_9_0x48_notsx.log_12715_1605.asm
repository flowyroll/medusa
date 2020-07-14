.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x19cd8, %r13
nop
add %r15, %r15
movw $0x6162, (%r13)
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x8084, %r8
nop
nop
nop
add $39374, %r14
mov (%r8), %r11
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x198f8, %r14
nop
nop
dec %rbp
mov (%r14), %r13w
add %r15, %r15
lea addresses_normal_ht+0xb9c0, %r15
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, (%r15)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x8638, %r10
cmp $59113, %r13
mov (%r10), %r8
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x1eb24, %r8
nop
xor %rbp, %rbp
movw $0x6162, (%r8)
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x9610, %rbp
clflush (%rbp)
nop
inc %r14
movl $0x61626364, (%rbp)
nop
sub $4074, %r15
lea addresses_normal_ht+0x178f8, %r15
dec %r10
movb $0x61, (%r15)
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x1a940, %rsi
lea addresses_normal_ht+0x5bf8, %rdi
nop
nop
nop
nop
add $62624, %r13
mov $7, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1aa98, %r13
nop
nop
nop
inc %r14
mov (%r13), %rcx
nop
nop
nop
nop
cmp $11521, %r11
lea addresses_WC_ht+0x160f8, %rcx
clflush (%rcx)
sub %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x80f8, %rsi
lea addresses_WC_ht+0x11960, %rdi
add %r11, %r11
mov $105, %rcx
rep movsq
nop
nop
inc %rbp
lea addresses_WC_ht+0x1d9a6, %r10
nop
nop
nop
nop
sub $58392, %rbp
movb $0x61, (%r10)
xor %r11, %r11
lea addresses_A_ht+0x71f4, %rsi
lea addresses_A_ht+0xdcb8, %rdi
nop
nop
nop
nop
nop
and $21293, %r11
mov $76, %rcx
rep movsb
nop
nop
xor $8985, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x2ee4, %rsi
lea addresses_normal+0x172f8, %rdi
nop
nop
dec %rbx
mov $27, %rcx
rep movsl
sub %r14, %r14

// Faulty Load
lea addresses_US+0x118f8, %rdi
clflush (%rdi)
nop
nop
nop
xor %rax, %rax
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'63': 3, '45': 23, 'ff': 1, '46': 1, '00': 11515, '32': 4, 'fc': 1, 'e0': 1, '47': 261, '44': 13, '80': 891, 'de': 1}
00 00 00 00 80 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 80 80 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 47 80 00 00 00 00 00 00 00 00 00 00 00 00 80 00 47 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 47 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 80 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 80 00 00 00 00 00 00 00 00 80 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 80 00 00 00 00 00 80 00 80 00 00 00 00 00 00 80 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 80 80 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 80 00 80 00 00 80 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 80 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 80 80 80 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 80 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 80 00 80 00 00 00 80 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 80 00 00 00 47 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 80 00 00 80 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 80 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00
*/
