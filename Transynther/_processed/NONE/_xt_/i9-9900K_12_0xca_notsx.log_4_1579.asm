.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x3864, %r13
cmp %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, (%r13)
sub $7730, %rdx
lea addresses_normal_ht+0x19264, %r12
sub %r10, %r10
movw $0x6162, (%r12)
nop
nop
dec %rdx
lea addresses_WC_ht+0x1b664, %rsi
lea addresses_D_ht+0x4564, %rdi
nop
inc %r11
mov $46, %rcx
rep movsl
nop
nop
nop
nop
xor $60286, %r11
lea addresses_WT_ht+0x9b64, %rcx
nop
nop
nop
add $15619, %rdx
movl $0x61626364, (%rcx)
xor %rcx, %rcx
lea addresses_normal_ht+0x1a984, %rsi
lea addresses_A_ht+0x14a64, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $68, %rcx
rep movsl
nop
nop
nop
sub $20049, %r12
lea addresses_D_ht+0x8c64, %rsi
lea addresses_D_ht+0xb8c4, %rdi
clflush (%rdi)
nop
nop
add $19280, %rax
mov $31, %rcx
rep movsb
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x1b49c, %rsi
lea addresses_WC_ht+0x4114, %rdi
nop
lfence
mov $113, %rcx
rep movsb
nop
and $53654, %r10
lea addresses_normal_ht+0xf5e4, %r10
nop
nop
nop
sub %r11, %r11
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
sub $3860, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WT+0x1af8a, %r15
and %r14, %r14
movl $0x51525354, (%r15)
nop
cmp %r15, %r15

// Store
mov $0x535a700000000621, %r13
nop
nop
nop
nop
sub $32005, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
xor $13741, %r14

// Store
mov $0x7399140000000864, %rsi
cmp %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rsi)

// Exception!!!
nop
nop
mov (0), %r15
nop
nop
nop
nop
xor $7378, %r15

// Store
mov $0x2905380000000fea, %r15
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_RW+0x1ef64, %r11
nop
nop
nop
add $3072, %r14
movl $0x51525354, (%r11)
and $28729, %r11

// Store
lea addresses_WC+0x16a64, %r14
nop
nop
nop
nop
nop
sub %r13, %r13
movl $0x51525354, (%r14)
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_WT+0x3a64, %r11
nop
nop
nop
nop
nop
cmp %r13, %r13
movb (%r11), %r14b
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'39': 4}
39 39 39 39
*/
