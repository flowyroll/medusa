.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x34d, %rsi
lea addresses_WC_ht+0x524d, %rdi
nop
nop
nop
and %r9, %r9
mov $51, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $5139, %r11
lea addresses_A_ht+0x1334d, %r12
nop
nop
nop
nop
nop
sub $42385, %rcx
mov (%r12), %r9d
nop
nop
and $6763, %rsi
lea addresses_UC_ht+0x1322d, %rsi
lea addresses_WC_ht+0x1e3b5, %rdi
nop
nop
nop
nop
inc %r9
mov $56, %rcx
rep movsl
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0xc2e9, %rcx
nop
nop
nop
nop
nop
and $20403, %rbx
movb $0x61, (%rcx)
nop
and %r12, %r12
lea addresses_normal_ht+0x165cd, %rbx
clflush (%rbx)
nop
sub $43953, %rcx
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
cmp $21729, %r9
lea addresses_normal_ht+0xb18d, %rsi
lea addresses_normal_ht+0xfdcd, %rdi
clflush (%rdi)
nop
nop
nop
sub $41450, %rbx
mov $91, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x3ed, %rdi
cmp $4942, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x3de5, %rsi
nop
nop
dec %r12
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x14b60, %rsi
lea addresses_UC_ht+0x14ded, %rdi
dec %r11
mov $84, %rcx
rep movsl
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x5d4d, %rbx
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rbx)
nop
nop
nop
nop
nop
sub $33650, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rdi

// Load
lea addresses_US+0x634d, %rax
nop
nop
inc %r11
mov (%rax), %di
nop
and $13595, %rbp

// Store
lea addresses_UC+0xa64d, %r15
nop
nop
nop
sub $24936, %r12
movl $0x51525354, (%r15)
nop
nop
nop
cmp %rax, %rax

// Load
mov $0x3c5c59000000034d, %r11
nop
xor $5456, %rax
mov (%r11), %r12d
nop
nop
cmp $17371, %r11

// Store
lea addresses_PSE+0x68dd, %r11
nop
nop
nop
nop
and %r12, %r12
movb $0x51, (%r11)
nop
nop
dec %r15

// Load
lea addresses_US+0x16dd, %rax
dec %r12
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rbp
add $4344, %r15

// Store
mov $0x61ebeb00000006ad, %rdi
clflush (%rdi)
nop
nop
and $15184, %r11
movl $0x51525354, (%rdi)
nop
dec %rdi

// Load
lea addresses_WT+0x334d, %r12
nop
nop
nop
nop
cmp %rdi, %rdi
vmovntdqa (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_WC+0x1114d, %r15
nop
nop
cmp %rbp, %rbp
mov (%r15), %ax
dec %rdi

// Store
lea addresses_WC+0xd54d, %r11
clflush (%r11)
nop
inc %r15
movl $0x51525354, (%r11)
nop
nop
add %rax, %rax

// Store
lea addresses_RW+0x1b4d, %r15
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
cmp $31295, %rbp

// Load
mov $0x14e4e60000000bcd, %r12
nop
nop
add %r11, %r11
mov (%r12), %edi
nop
dec %rbp

// Faulty Load
lea addresses_normal+0x634d, %rbp
nop
nop
nop
nop
add %r15, %r15
mov (%rbp), %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'34': 36}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
