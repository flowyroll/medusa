.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1119b, %rdx
nop
nop
inc %rdi
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
nop
add $33291, %rsi
lea addresses_UC_ht+0x1ce3f, %rsi
lea addresses_D_ht+0x1df7f, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $71, %rcx
rep movsq
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x13f9f, %rsi
lea addresses_UC_ht+0x20d7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $6, %rcx
rep movsq
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0xd57f, %rcx
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
and $3344, %r8
lea addresses_D_ht+0x87f, %rbx
dec %rbp
mov (%rbx), %di
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1067f, %rsi
mfence
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
nop
add $23231, %rdi
lea addresses_normal_ht+0x5aff, %r8
nop
nop
nop
nop
sub %rbx, %rbx
movb (%r8), %dl
and $53012, %r8
lea addresses_normal_ht+0x1b337, %rbx
nop
nop
add %r8, %r8
mov (%rbx), %rbp
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x683f, %r8
sub %rcx, %rcx
mov (%r8), %edi
mfence
lea addresses_normal_ht+0x1368b, %rsi
lea addresses_WC_ht+0x6dbf, %rdi
clflush (%rdi)
nop
cmp $5581, %r8
mov $66, %rcx
rep movsb
nop
add %rdx, %rdx
lea addresses_A_ht+0x127bf, %rdi
nop
nop
add $65105, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x19a7f, %r8
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x1c7af, %rsi
lea addresses_normal_ht+0xee7f, %rdi
nop
nop
nop
cmp $35685, %r11
mov $9, %rcx
rep movsb
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x1a27f, %rsi
lea addresses_WT_ht+0x1d27f, %rdi
clflush (%rdi)
nop
nop
add $54103, %rdx
mov $44, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $16108, %rsi
lea addresses_WT_ht+0xd7b, %rsi
nop
xor $31180, %rdi
movw $0x6162, (%rsi)
nop
nop
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x1e8aa, %rsi
nop
nop
xor %r9, %r9
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
inc %rdx

// Load
lea addresses_UC+0x8a7f, %rsi
clflush (%rsi)
nop
nop
nop
nop
lfence
mov (%rsi), %dx
nop
nop
nop
nop
xor $3641, %r13

// Store
lea addresses_UC+0x6942, %r9
nop
nop
nop
dec %rsi
movw $0x5152, (%r9)
nop
nop
nop
nop
dec %r11

// Store
lea addresses_WC+0x9a5b, %rdi
inc %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
cmp $59547, %rsi

// Store
lea addresses_D+0xf27f, %r13
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%r13)
nop
add $18961, %r15

// Store
mov $0x649dbb0000000a7f, %rsi
nop
nop
nop
nop
cmp $58520, %r13
movw $0x5152, (%rsi)
nop
nop
and %rdi, %rdi

// Store
mov $0x2b697c0000000627, %rdx
nop
nop
nop
cmp $30724, %rdi
movb $0x51, (%rdx)
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0x1113f, %r13
nop
nop
nop
nop
sub $56789, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r13)
nop
add %r11, %r11

// Faulty Load
lea addresses_PSE+0xea7f, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
vmovaps (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 571}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
