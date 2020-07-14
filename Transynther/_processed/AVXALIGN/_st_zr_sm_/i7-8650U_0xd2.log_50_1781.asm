.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1dbad, %r9
xor %r15, %r15
mov (%r9), %r11w
nop
nop
nop
dec %r15
lea addresses_D_ht+0x4ce7, %r8
nop
nop
nop
nop
xor $60257, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0xb341, %r9
xor %rbp, %rbp
movw $0x6162, (%r9)
nop
nop
inc %r11
lea addresses_A_ht+0xc9bd, %r11
nop
cmp $64235, %r8
movb $0x61, (%r11)
cmp $8024, %r15
lea addresses_A_ht+0x23d, %rsi
lea addresses_A_ht+0xfa3d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r15, %r15
mov $9, %rcx
rep movsq
nop
nop
nop
nop
and $36666, %r9
lea addresses_WC_ht+0x74bd, %r9
xor %r8, %r8
movb (%r9), %r11b
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x1bdbd, %rsi
lea addresses_WC_ht+0xdbbd, %rdi
nop
nop
lfence
mov $57, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r15
lea addresses_WC_ht+0xed3d, %rcx
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
xor %r11, %r11
lea addresses_D_ht+0x1babd, %rdi
nop
and %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
sub $2028, %r12
lea addresses_UC_ht+0x4989, %r15
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %r15
vmovaps %ymm2, (%r15)
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0xeabd, %r14
nop
nop
cmp %r8, %r8
mov (%r14), %di
nop
nop
add %r14, %r14
lea addresses_D_ht+0x1639d, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%rdi)
and $45960, %rsi
lea addresses_A_ht+0x7ebd, %r11
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r11), %r15
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x1e0bd, %r11
nop
nop
nop
nop
nop
inc %r8
mov (%r11), %rcx
nop
nop
nop
nop
and $62650, %r14
lea addresses_WC_ht+0x73bd, %r11
nop
nop
nop
nop
nop
dec %rbp
movb (%r11), %r14b
nop
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x8ebd, %rbp
nop
nop
xor %rsi, %rsi
mov (%rbp), %di
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_RW+0xbd, %rdx
nop
nop
nop
cmp $33067, %r15
movb $0x51, (%rdx)
nop
cmp $22806, %rdi

// Load
lea addresses_RW+0x15ad, %rdi
nop
nop
nop
xor $23433, %rsi
mov (%rdi), %r15
nop
nop
nop
and $40354, %rdx

// Store
mov $0x4296be000000073d, %r15
nop
nop
nop
nop
sub $59836, %r11
movw $0x5152, (%r15)
sub %r11, %r11

// Store
lea addresses_PSE+0xbad, %r8
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
nop
and $31339, %rdi

// Store
lea addresses_WT+0x1841d, %rbp
nop
nop
nop
nop
and $530, %rsi
movl $0x51525354, (%rbp)
sub %rdx, %rdx

// Store
lea addresses_WT+0x1cabd, %r15
nop
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x5152, (%r15)
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_WT+0x1cabd, %rsi
nop
nop
nop
sub %r15, %r15
mov (%rsi), %di
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 45, '52': 5}
00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00
*/
