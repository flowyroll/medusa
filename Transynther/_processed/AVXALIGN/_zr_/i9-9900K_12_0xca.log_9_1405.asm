.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x884c, %rax
nop
add $19796, %r10
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
dec %r10
lea addresses_WC_ht+0x156b4, %rsi
lea addresses_normal_ht+0x1da64, %rdi
nop
cmp $3771, %rbp
mov $77, %rcx
rep movsl
xor $33900, %rax
lea addresses_UC_ht+0xe40c, %rax
nop
nop
nop
nop
nop
and $16779, %r12
movw $0x6162, (%rax)
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x16ef4, %rax
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%rax)
nop
and %r12, %r12
lea addresses_WC_ht+0x13334, %rsi
lea addresses_D_ht+0x16e2c, %rdi
nop
nop
nop
xor %r9, %r9
mov $1, %rcx
rep movsw
nop
dec %rbp
lea addresses_UC_ht+0xe4c4, %rsi
nop
cmp $25957, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x5092, %rsi
lea addresses_normal_ht+0x1a8f4, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rbp, %rbp
mov $103, %rcx
rep movsl
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x8a34, %rbp
clflush (%rbp)
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rbp), %r12w
nop
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x1a974, %rbp
nop
nop
nop
nop
inc %rax
mov (%rbp), %r10
cmp $9006, %rbp
lea addresses_UC_ht+0x1c874, %rsi
lea addresses_UC_ht+0x16904, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r10
mov $101, %rcx
rep movsw
nop
xor %rdi, %rdi
lea addresses_A_ht+0x132f4, %r9
clflush (%r9)
nop
nop
inc %r12
movl $0x61626364, (%r9)
and $56369, %r12
lea addresses_WC_ht+0x19208, %rsi
lea addresses_A_ht+0xf2f4, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $53, %rcx
rep movsb
nop
nop
nop
nop
and $26126, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx

// Load
lea addresses_PSE+0x5d60, %r14
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r14), %r8
nop
nop
nop
and %r13, %r13

// Store
lea addresses_normal+0xf354, %r12
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r12)
nop
nop
sub %r11, %r11

// Store
lea addresses_WT+0x58f4, %r12
nop
nop
nop
nop
xor %rbp, %rbp
movb $0x51, (%r12)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_WT+0xa6f4, %r13
nop
nop
nop
nop
nop
and $8544, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_US+0x2764, %r14
nop
nop
nop
nop
add $62261, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r14)
nop
sub $18967, %rbp

// Store
lea addresses_US+0x15b04, %r12
nop
cmp $53045, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
and $49619, %r12

// Store
lea addresses_UC+0x8274, %rbx
nop
nop
nop
nop
add $47342, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rbx)
cmp $25714, %r13

// Faulty Load
mov $0x77123b00000006f4, %r8
nop
nop
nop
nop
nop
add %r13, %r13
movntdqa (%r8), %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
