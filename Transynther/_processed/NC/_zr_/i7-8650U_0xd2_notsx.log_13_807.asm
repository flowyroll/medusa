.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x169b6, %rax
nop
nop
nop
sub $5537, %rcx
mov (%rax), %rdx
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1b5de, %rsi
lea addresses_UC_ht+0x1be68, %rdi
nop
nop
nop
nop
sub $56692, %r15
mov $36, %rcx
rep movsq
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x94f6, %rax
nop
nop
nop
add $24694, %r14
movw $0x6162, (%rax)
add $11942, %rdi
lea addresses_D_ht+0x170b6, %rsi
lea addresses_UC_ht+0x19146, %rdi
nop
nop
nop
nop
and $53377, %r14
mov $84, %rcx
rep movsq
nop
sub $29055, %rdx
lea addresses_WT_ht+0x4836, %rcx
nop
nop
nop
nop
nop
inc %rsi
movb $0x61, (%rcx)
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x8a36, %rsi
lea addresses_D_ht+0x19676, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $95, %rcx
rep movsq
nop
nop
inc %rdx
lea addresses_UC_ht+0x11b6a, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp $46584, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r15)
and $1445, %rdi
lea addresses_WC_ht+0xbc36, %r14
nop
nop
nop
sub $5561, %rax
vmovups (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x1abf2, %rdi
add %r15, %r15
mov (%rdi), %ecx
sub $34505, %rsi
lea addresses_UC_ht+0x4c96, %r14
nop
lfence
movl $0x61626364, (%r14)
nop
nop
inc %rcx
lea addresses_WT_ht+0x1b236, %r15
nop
nop
cmp $10964, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r15)
nop
nop
inc %r14
lea addresses_D_ht+0x236, %rcx
clflush (%rcx)
nop
and %r15, %r15
movl $0x61626364, (%rcx)
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x8d36, %rsi
lea addresses_WT+0x14e36, %rdi
nop
nop
nop
inc %r13
mov $68, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $23304, %r13

// Store
lea addresses_normal+0x6a36, %rdx
nop
nop
nop
cmp $17218, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
nop
dec %r13

// Store
lea addresses_normal+0x1b9a6, %rdi
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%rdi)
nop
nop
and $3123, %rcx

// Store
mov $0x1c318600000008f6, %rdi
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
add $50505, %r13

// Load
lea addresses_A+0x484e, %r13
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r13), %r8
nop
nop
nop
add %rdx, %rdx

// Store
mov $0xb6, %rdx
nop
and $64829, %rsi
movl $0x51525354, (%rdx)
add %rbx, %rbx

// Store
lea addresses_US+0xb636, %rcx
nop
nop
nop
nop
nop
and $1834, %rdi
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
sub %rdx, %rdx

// Faulty Load
mov $0x73e3570000000e36, %rbx
sub %rdx, %rdx
mov (%rbx), %esi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
