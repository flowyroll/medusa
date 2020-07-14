.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16159, %rsi
lea addresses_A_ht+0x14999, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $33, %rcx
rep movsl
nop
nop
mfence
lea addresses_UC_ht+0x12319, %rsi
lea addresses_UC_ht+0x3633, %rdi
nop
nop
nop
nop
sub $5890, %r11
mov $63, %rcx
rep movsw
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1cfc1, %rdi
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x1ab19, %rdi
sub $32763, %rcx
mov (%rdi), %r14w
xor $59998, %rsi
lea addresses_WT_ht+0xb819, %rsi
lea addresses_WT_ht+0x6b99, %rdi
cmp $18517, %r9
mov $32, %rcx
rep movsw
nop
nop
add $29865, %r11
lea addresses_A_ht+0xf1e9, %r11
clflush (%r11)
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0xd219, %r11
nop
nop
nop
nop
nop
and $31328, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
and $52893, %r11
lea addresses_WT_ht+0xdc59, %r14
add $3639, %rax
movl $0x61626364, (%r14)
nop
nop
and $43633, %r14
lea addresses_normal_ht+0x1cd19, %rdi
nop
nop
xor %r14, %r14
mov (%rdi), %esi
nop
nop
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi

// Store
mov $0x415b930000000079, %rcx
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rcx)
nop
and $10781, %r11

// Store
lea addresses_A+0x17f19, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%rdi)
nop
nop
add $6981, %r12

// Store
lea addresses_US+0x736f, %r12
clflush (%r12)
sub %r15, %r15
movl $0x51525354, (%r12)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_A+0x14299, %rbx
nop
nop
nop
dec %rcx
movb $0x51, (%rbx)
nop
nop
nop
nop
add %r12, %r12

// Load
mov $0xb19, %r15
nop
and $8095, %rbx
mov (%r15), %edi
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_D+0xb719, %r13
inc %r15
mov (%r13), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 23}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
