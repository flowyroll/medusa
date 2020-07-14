.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x16746, %r13
nop
nop
nop
nop
nop
add %r12, %r12
movb $0x61, (%r13)
nop
xor $24255, %r15
lea addresses_D_ht+0x3e5e, %r11
nop
nop
nop
nop
nop
xor $2561, %rdx
mov (%r11), %ax
nop
cmp %r11, %r11
lea addresses_UC_ht+0x24be, %rdx
nop
nop
nop
nop
dec %rax
movw $0x6162, (%rdx)
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x14e0d, %rsi
lea addresses_A_ht+0x1a4be, %rdi
clflush (%rsi)
cmp %rdx, %rdx
mov $121, %rcx
rep movsb
sub %r13, %r13
lea addresses_D_ht+0x1bdbe, %rsi
lea addresses_D_ht+0x8e38, %rdi
nop
nop
dec %rdx
mov $114, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x17599, %rdx
nop
nop
nop
nop
nop
xor $19410, %r11
mov $0x6162636465666768, %r12
movq %r12, (%rdx)
add %rbx, %rbx
lea addresses_WC_ht+0x1be3e, %r13
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r13)
xor $9362, %rdi
lea addresses_D_ht+0x163be, %rsi
lea addresses_WC_ht+0x13714, %rdi
cmp %rax, %rax
mov $51, %rcx
rep movsw
nop
inc %rax
lea addresses_normal_ht+0xdabe, %rdi
nop
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%rdi)
nop
sub %rax, %rax
lea addresses_normal_ht+0x110be, %r15
nop
nop
and %r11, %r11
movw $0x6162, (%r15)
and $39627, %rdi
lea addresses_WC_ht+0x144f6, %rsi
lea addresses_WT_ht+0x17ee, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $37908, %r15
mov $36, %rcx
rep movsw
and %rdi, %rdi
lea addresses_UC_ht+0x1885e, %rsi
lea addresses_normal_ht+0x7e3e, %rdi
mfence
mov $45, %rcx
rep movsb
xor %r13, %r13
lea addresses_normal_ht+0x1cbe, %rsi
lea addresses_normal_ht+0x3ebe, %rdi
nop
add %rdx, %rdx
mov $25, %rcx
rep movsw
nop
nop
inc %r15
lea addresses_A_ht+0x10942, %rsi
lea addresses_WT_ht+0x18bbe, %rdi
nop
nop
nop
nop
nop
sub $51632, %r11
mov $122, %rcx
rep movsl
nop
nop
xor $42612, %rsi
lea addresses_WT_ht+0x10bd7, %rsi
lea addresses_WT_ht+0x1b4be, %rdi
nop
nop
cmp %r12, %r12
mov $43, %rcx
rep movsl
nop
nop
nop
sub $9267, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_WT+0x1c956, %rax
nop
nop
nop
nop
sub $45102, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_WC+0x14cbe, %rdi
nop
nop
nop
nop
nop
inc %r14
mov (%rdi), %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'53': 1250, '47': 1090, '3c': 13, '12': 1, 'ab': 2, '49': 249, '48': 89, 'c0': 7052, 'ff': 8446, '46': 48, '01': 59, '45': 545, '00': 2979, '80': 1, '44': 4, '1b': 1}
00 47 ff 00 ff c0 ff c0 00 ff ff 00 ff ff 01 ff 01 ff c0 53 ff c0 00 ff c0 ff c0 00 ff c0 ff c0 ff c0 47 ff c0 ff c0 47 ff c0 47 ff c0 ff c0 00 ff c0 49 ff c0 ff c0 49 45 ff c0 45 ff c0 ff ff c0 ff c0 00 00 00 ff c0 ff c0 00 53 53 00 00 00 ff c0 ff c0 ff c0 c0 c0 c0 00 ff c0 c0 ff c0 ff c0 ff c0 ff c0 47 ff c0 ff c0 ff c0 ff c0 ff 00 00 ff 47 47 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 49 ff c0 ff c0 53 ff c0 ff c0 ff c0 ff c0 ff ff 45 ff c0 00 ff 00 47 ff c0 ff c0 ff c0 00 00 ff c0 ff c0 00 ff c0 00 53 53 00 53 ff c0 48 00 c0 ff 00 00 ff ff c0 ff c0 ff c0 00 ff c0 ff c0 ff c0 ff c0 00 47 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 00 ff c0 ff c0 ff c0 ff 45 45 ff c0 ff c0 45 ff c0 00 00 00 ff c0 ff c0 ff 01 ff c0 53 ff ff 00 53 00 53 47 ff c0 00 c0 c0 00 ff c0 ff c0 ff c0 00 ff c0 ff c0 53 ff c0 ff 47 ff c0 ff c0 ff 00 47 ff c0 ff c0 ff c0 ff ff c0 00 ff c0 53 ff c0 ff c0 ff c0 45 ff 00 47 ff c0 48 ff c0 00 ff c0 00 53 53 00 53 ff c0 ff c0 ff c0 ff c0 53 00 ff c0 ff c0 ff 00 ff c0 ff c0 ff c0 47 ff c0 ff c0 ff c0 ff c0 ff c0 00 ff c0 ff c0 47 47 47 ff c0 ff c0 ff c0 ff c0 ff 53 ff 49 49 ff 45 ff c0 ff 00 c0 00 ff c0 53 ff c0 00 53 ff c0 ff c0 ff c0 53 00 ff c0 ff c0 ff c0 ff c0 ff c0 00 ff 00 ff ff c0 ff c0 ff c0 ff c0 53 ff c0 ff 00 ff c0 ff c0 ff c0 ff c0 ff 47 ff c0 ff c0 ff c0 00 00 ff c0 ff c0 ff c0 ff c0 ff c0 ff 53 ff c0 ff c0 00 ff c0 ff c0 47 47 ff c0 00 00 ff c0 00 00 ff c0 53 ff c0 00 00 ff c0 47 53 ff c0 ff c0 ff ff c0 47 ff c0 00 ff 00 ff c0 ff c0 ff c0 47 47 ff c0 ff c0 ff c0 53 ff c0 00 00 ff c0 ff c0 ff c0 49 ff 45 ff c0 ff 00 47 ff c0 ff c0 47 47 ff c0 00 53 ff c0 00 47 47 ff c0 ff c0 00 ff 00 47 ff c0 00 ff c0 ff c0 ff c0 ff c0 ff c0 00 ff ff c0 ff c0 ff 47 47 00 ff 00 47 ff c0 ff ff c0 ff c0 ff c0 ff c0 ff c0 45 47 ff c0 47 c0 00 ff c0 53 ff c0 00 ff c0 00 ff ff 00 ff ff c0 53 53 ff 00 ff c0 ff c0 47 00 00 ff c0 ff ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 53 ff ff ff c0 49 45 ff 45 45 53 45 ff c0 ff c0 47 c0 ff c0 c0 00 00 00 c0 c0 00 00 00 53 53 53 00 53 ff c0 ff c0 ff 00 c0 47 ff c0 ff c0 ff ff c0 00 ff c0 00 00 ff 00 47 ff c0 ff c0 00 ff c0 ff 1b ff c0 53 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 ff c0 c0 00 47 ff c0 ff c0 00 00 00 ff c0 ff 48 ff 00 ff c0 53 53 00 00 ff 00 ff c0 00 00 ff ff 00 00 ff c0 ff c0 ff c0 47 47 ff c0 00 ff c0 47 47 ff c0 ff c0 47 ff 00 ff c0 ff c0 53 ff c0 ff c0 53 ff c0 ff 45 ff c0 ff c0 45 ff c0 ff c0 ff c0 c0 c0 c0 ff c0 00 ff c0 00 ff 53 53 ff c0 00 ff c0 53 00 53 00 ff c0 ff c0 ff c0 ff c0 ff ff c0 00 ff c0 ff c0 47 00 ff c0 ff c0 ff 47 ff c0 53 3c ff c0 49 53 ff c0 ff c0 00 ff c0 45 ff c0 45 45 45 ff c0 ff c0 ff c0 00 ff c0 ff c0 ff c0 00 53 53 ff c0 53 ff c0 53 ff c0 53 ff 48 ff 48 ff c0 ff c0 ff c0 00 00 c0 ff c0 ff c0 00 ff c0 ff c0 ff 00 47 ff c0 ff ff c0 ff c0 ff 47 ff c0 47 ff c0 ff c0 ff ff c0 49 ff c0 ff c0 45 53 45 ff c0 ff c0 ff c0 45 ff c0 ff c0 ff c0 ff c0 ff c0 53 ff c0 ff c0 53 53 ff 00 ff c0 00 ff ff c0 ff 00 ff c0 ff c0 ff c0 47 ff c0 ff c0 00 ff 00 ff
*/
