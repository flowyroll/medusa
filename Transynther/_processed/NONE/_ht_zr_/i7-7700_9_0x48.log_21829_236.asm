.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2d38, %rsi
lea addresses_D_ht+0x16538, %rdi
nop
nop
add %r15, %r15
mov $52, %rcx
rep movsw
and $4142, %r9
lea addresses_normal_ht+0x538, %rsi
lea addresses_D_ht+0x1b138, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r15, %r15
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x17138, %rsi
lea addresses_WC_ht+0x4d38, %rdi
nop
nop
sub %r9, %r9
mov $33, %rcx
rep movsw
xor %rcx, %rcx
lea addresses_WC_ht+0x5040, %rsi
lea addresses_WT_ht+0x15bb8, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $77, %rcx
rep movsb
nop
nop
nop
nop
cmp $4855, %r10
lea addresses_UC_ht+0x5238, %rsi
lea addresses_A_ht+0x17138, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $50, %rcx
rep movsb
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x10648, %rcx
nop
and %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
inc %r10
lea addresses_WC_ht+0x97b8, %rsi
lea addresses_A_ht+0x1c138, %rdi
nop
nop
sub %r13, %r13
mov $53, %rcx
rep movsl
nop
inc %r9
lea addresses_WC_ht+0x17d38, %r13
cmp $21110, %r15
movb $0x61, (%r13)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0xc6be, %rsi
lea addresses_UC_ht+0x8c38, %rdi
nop
nop
xor $35213, %r10
mov $103, %rcx
rep movsl
sub $23881, %r13
lea addresses_UC_ht+0xd38, %r9
clflush (%r9)
sub $3139, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x18b38, %rsi
lea addresses_UC_ht+0x118b8, %rdi
nop
nop
nop
nop
xor $46337, %r9
mov $52, %rcx
rep movsb
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rbx

// Load
lea addresses_RW+0x5538, %rbx
nop
nop
nop
nop
xor %rbp, %rbp
movb (%rbx), %r10b
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x19610, %rbp
nop
and %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
xor $4462, %r11

// Store
lea addresses_US+0x7538, %r10
sub %rbp, %rbp
movw $0x5152, (%r10)
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_A+0x2354, %r10
clflush (%r10)
sub %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_WT+0x2d38, %rbx
nop
nop
nop
nop
nop
and $24051, %r15
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'49': 6051, '48': 1054, '45': 352, '44': 619, '00': 13753}
00 00 00 00 00 49 00 00 49 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 44 00 00 49 00 45 00 00 49 00 49 00 00 49 00 49 00 00 48 00 49 00 49 00 49 00 44 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 48 00 00 00 00 00 49 00 44 00 00 49 00 44 00 00 49 00 49 00 00 49 00 49 00 00 48 00 49 00 00 48 00 49 00 44 00 00 49 00 49 00 00 49 00 49 00 00 48 00 49 00 45 00 49 00 49 00 00 00 00 49 00 44 00 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 00 48 00 49 00 00 48 00 48 00 45 00 00 49 00 00 49 49 00 00 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 00 48 00 49 00 00 48 00 49 00 00 00 00 49 00 00 00 00 49 00 49 00 49 00 00 00 00 00 49 00 45 00 00 49 00 00 00 00 49 00 49 00 00 00 00 49 00 00 48 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 00 48 00 49 00 44 00 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 48 00 49 00 00 48 00 49 00 00 49 00 49 00 00 48 49 00 00 00 00 49 00 00 00 00 49 00 44 00 00 49 00 44 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 49 00 49 00 00 48 00 49 00 00 00 00 49 00 00 00 49 00 45 00 49 00 49 00 49 00 44 00 00 49 00 49 00 00 48 00 49 00 00 49 00 49 00 00 48 00 00 00 00 49 00 44 00 00 49 00 45 00 00 00 00 49 00 00 00 00 49 00 44 00 00 49 00 49 00 00 49 00 45 48 49 00 49 00 49 00 00 00 00 49 44 00 00 49 00 00 00 00 49 00 49 00 49 49 00 00 00 00 49 00 00 48 00 44 00 00 49 00 00 00 00 49 00 44 00 00 49 00 49 00 00 48 00 49 00 00 00 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 44 00 00 49 00 44 00 00 49 00 00 00 49 00 44 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 00 00 49 00 00 49 00 49 00 00 00 00 49 00 49 00 00 49 49 00 00 00 49 00 00 48 00 49 00 00 00 00 49 00 44 00 00 49 00 00 00 00 49 00 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 48 00 49 00 00 00 00 49 00 45 00 00 48 00 49 00 49 49 00 00 48 00 49 00 48 00 49 00 00 49 00 49 00 00 48 00 49 00 44 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 48 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 48 00 49 00 00 00 49 00 49 00 49 49 00 00 00 00 49 00 00 00 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 44 00 00 49 00 45 00 00 49 00 49 00 00 49 00 49 00 00 48 49 00 00 00 49 00 00 00 00 49 00 00 48 00 49 00 44 00 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 00 00 49 00 00 48 00 49 00 00 49 00 49 00 00 00 00 49 00 44 00 00 00 49 00 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 00 48 00 49 00 00 48 00 49 00 00 00 00 49 00 48 00 00 49 49 00 00 49 00 00 00 00 00 49 00 00 49 00 49 00 00 49 00 49 00 00 48 00 49 00 00 00 00 49 00 45 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 48 00 49 00 00 00 00 49 00 44 49 49 00 00 49 00 49 00 00 00 00 49 00 49 00 45 00 49 00 44 00 49 00 49 00 00 48 00 49 00 00 00 00 00 45 00 00 49 00 45 00 00 49 00 45 00 00 49 00 45 00 00 48 00 49 00 00 48 00 49 00 00 00 49 00 44 00 00 49 00 49 00 00 49 49 00 00 00 00 49 00 49 00 48 00 49 00 00 48 00 49 00 00 00 00 44 00 00 49 49 00 00 49 00 49 00 00 49 49 00 00 00 00 49 00 00 00 49 49 00
*/
