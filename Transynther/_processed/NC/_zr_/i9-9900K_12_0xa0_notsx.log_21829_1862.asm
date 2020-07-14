.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1a0e0, %rsi
lea addresses_A_ht+0xdb20, %rdi
nop
nop
nop
nop
and $43359, %r12
mov $119, %rcx
rep movsw
dec %rbp
lea addresses_WT_ht+0xab20, %rdi
nop
lfence
movw $0x6162, (%rdi)
inc %rcx
lea addresses_D_ht+0xb70, %r12
inc %rdx
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xed5b, %r12
sub %rdi, %rdi
movw $0x6162, (%r12)
mfence
lea addresses_WT_ht+0x18320, %rbp
nop
nop
nop
nop
nop
and $55304, %rdi
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x13720, %rsi
lea addresses_UC_ht+0x16bc0, %rdi
nop
xor $13333, %rax
mov $47, %rcx
rep movsl
nop
nop
nop
nop
nop
and $54154, %rbp
lea addresses_WT_ht+0x12020, %rbp
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
nop
nop
nop
add $28505, %rax
lea addresses_D_ht+0x15218, %rsi
lea addresses_D_ht+0x89a0, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $77, %rcx
rep movsb
inc %rcx
lea addresses_WC_ht+0x1c620, %rsi
nop
nop
xor $20698, %r12
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r14
sub $22847, %rax
lea addresses_WT_ht+0x8660, %rbp
nop
add $12795, %rdi
mov (%rbp), %rax
nop
nop
nop
nop
nop
xor $4487, %rbp
lea addresses_D_ht+0x16f44, %rcx
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x1b684, %rdi
nop
cmp $5526, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
and $32849, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx

// Store
mov $0x420, %r11
nop
nop
nop
nop
sub $51978, %rbp
movb $0x51, (%r11)
nop
nop
and %r12, %r12

// Store
mov $0x8e0, %r11
clflush (%r11)
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, (%r11)
xor $28313, %r11

// Store
mov $0x1c6f400000000c94, %r12
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
cmp $26252, %rcx

// Store
lea addresses_normal+0xd6b8, %r12
cmp %r14, %r14
movl $0x51525354, (%r12)
nop
inc %r13

// Load
mov $0x1483510000000b20, %rbp
nop
nop
nop
nop
sub %r14, %r14
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
cmp $52368, %r14

// Store
lea addresses_WC+0x1f2a0, %r11
nop
cmp %r12, %r12
movl $0x51525354, (%r11)
nop
and %r11, %r11

// Faulty Load
mov $0x1483510000000b20, %r12
clflush (%r12)
nop
nop
add %r15, %r15
mov (%r12), %r11w
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
