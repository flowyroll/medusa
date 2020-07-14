.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a64e, %r14
nop
nop
nop
nop
xor %r8, %r8
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm3
vpextrq $1, %xmm3, %r11
sub $63891, %r9
lea addresses_normal_ht+0x1acfc, %rsi
lea addresses_D_ht+0x1187c, %rdi
nop
and $8603, %r14
mov $5, %rcx
rep movsl
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x12afc, %rcx
nop
add $53259, %r11
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x5cbe, %r8
add $40970, %rsi
mov (%r8), %r9w
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x1987c, %r8
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
nop
nop
and $8726, %r8
lea addresses_D_ht+0xc84a, %rdi
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
nop
cmp $2484, %r8
lea addresses_WT_ht+0x31fc, %r14
nop
nop
dec %r11
movb (%r14), %r8b
nop
sub %r8, %r8
lea addresses_A_ht+0xb217, %rsi
lea addresses_WT_ht+0x96fc, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $95, %rcx
rep movsw
nop
xor $58093, %r9
lea addresses_UC_ht+0x15e7c, %r8
nop
xor $35842, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r8)
nop
nop
inc %rcx
lea addresses_UC_ht+0x4084, %rsi
lea addresses_WT_ht+0x13056, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $7, %rcx
rep movsw
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0xe37c, %rsi
nop
dec %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
and $9807, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xcea4, %rdi
nop
nop
sub %rbp, %rbp
movb $0x51, (%rdi)
nop
nop
add %rbx, %rbx

// Store
lea addresses_PSE+0xc4fc, %rax
nop
cmp $21215, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
sub $38401, %r9

// REPMOV
lea addresses_WT+0x180fc, %rsi
lea addresses_normal+0x180fc, %rdi
sub %rax, %rax
mov $7, %rcx
rep movsq
sub $59838, %rsi

// Faulty Load
lea addresses_US+0x18fc, %rbx
nop
nop
nop
nop
nop
and %r11, %r11
movb (%rbx), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'00': 485}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
