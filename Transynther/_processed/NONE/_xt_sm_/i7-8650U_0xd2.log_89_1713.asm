.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2619, %rsi
lea addresses_WT_ht+0x174d7, %rdi
nop
nop
cmp %r8, %r8
mov $15, %rcx
rep movsl
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0x1511b, %rsi
lea addresses_WT_ht+0x10a2b, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $5, %rcx
rep movsb
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0xe92b, %rcx
nop
nop
nop
nop
and %r8, %r8
mov (%rcx), %r13w
nop
nop
nop
and $23985, %r14
lea addresses_normal_ht+0xd217, %r14
nop
nop
add %r11, %r11
mov (%r14), %r13d
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x1db2b, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%rdi), %r8b
nop
nop
nop
cmp $5987, %r14
lea addresses_UC_ht+0x1bfcb, %r13
nop
nop
nop
inc %r11
movw $0x6162, (%r13)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x18a2b, %r11
clflush (%r11)
nop
nop
nop
nop
dec %r14
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
add $14315, %r13
lea addresses_WT_ht+0x14991, %rsi
lea addresses_WC_ht+0xaee3, %rdi
nop
cmp $55457, %r10
mov $46, %rcx
rep movsw
nop
add $64450, %r8
lea addresses_WC_ht+0x1b52b, %rcx
nop
nop
nop
nop
add $57166, %r14
movw $0x6162, (%rcx)
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1cc5, %r10
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
xor $36474, %r10
lea addresses_A_ht+0xd32b, %rsi
lea addresses_A_ht+0xa32b, %rdi
nop
nop
nop
and $60265, %r14
mov $32, %rcx
rep movsl
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x158ab, %r8
nop
nop
nop
nop
nop
add %rdi, %rdi
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
cmp $6308, %rsi

// Store
lea addresses_A+0x12f2b, %r8
nop
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%r8)
nop
nop
nop
and $43732, %r14

// Store
lea addresses_WT+0x14a35, %r8
nop
nop
nop
nop
nop
and %r10, %r10
movb $0x51, (%r8)
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0x1b543, %rsi
and %r10, %r10
movw $0x5152, (%rsi)
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x332b, %r10
nop
nop
and $36998, %rsi
movw $0x5152, (%r10)
nop
sub $48270, %r10

// Faulty Load
lea addresses_WC+0x332b, %rax
nop
nop
nop
nop
xor %r10, %r10
mov (%rax), %r14w
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'52': 89}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
