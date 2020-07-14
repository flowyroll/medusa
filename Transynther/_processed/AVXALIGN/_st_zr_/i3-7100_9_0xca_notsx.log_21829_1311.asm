.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe446, %r11
nop
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%r11)
nop
nop
nop
sub $42818, %rbp
lea addresses_WC_ht+0x7668, %r12
clflush (%r12)
nop
nop
nop
sub %r9, %r9
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x1690, %r11
nop
nop
nop
nop
inc %r15
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x1e468, %rsi
lea addresses_WC_ht+0x108a8, %rdi
nop
nop
nop
nop
cmp $47191, %r12
mov $4, %rcx
rep movsl
dec %rdi
lea addresses_A_ht+0x12e68, %r12
and $60836, %r15
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xa7c8, %rsi
lea addresses_normal_ht+0x17268, %rdi
add %rbp, %rbp
mov $25, %rcx
rep movsl
nop
nop
nop
xor $19451, %r10
lea addresses_A_ht+0x5668, %r10
nop
nop
nop
sub %r9, %r9
mov (%r10), %rdi
nop
nop
nop
dec %r8
lea addresses_normal_ht+0xad68, %rsi
lea addresses_WT_ht+0x19d68, %rdi
clflush (%rdi)
nop
nop
xor $38170, %r8
mov $5, %rcx
rep movsb
nop
and $27564, %r10
lea addresses_WC_ht+0x14a18, %rsi
lea addresses_UC_ht+0x1d398, %rdi
nop
cmp $46896, %r11
mov $108, %rcx
rep movsb
nop
nop
nop
cmp $54011, %r12
lea addresses_WT_ht+0x1cd48, %rdi
nop
xor %rbp, %rbp
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x1b4e8, %r12
nop
nop
nop
nop
nop
sub $13670, %rbp
movb (%r12), %r9b
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x3668, %r15
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_RW+0x123dc, %rdi
dec %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
add %rbx, %rbx

// Store
lea addresses_A+0xbb38, %r15
nop
nop
nop
cmp $64515, %r8
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp $49530, %rsi

// Store
mov $0x3597170000000338, %r15
nop
sub $46879, %r10
movb $0x51, (%r15)
nop
nop
add %r15, %r15

// Store
lea addresses_RW+0x16f6e, %rdi
nop
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_PSE+0x13168, %rsi
nop
and $20159, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
xor %rbx, %rbx

// Load
lea addresses_A+0x12c68, %rdi
dec %r10
mov (%rdi), %si
nop
nop
nop
nop
inc %r8

// Faulty Load
lea addresses_US+0x15668, %r15
nop
nop
xor $5241, %rbx
mov (%r15), %esi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 5209, '00': 16620}
00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 58 58 00 58 00 00 00 00 00 00 00 00 00 00 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 00 00 00 00 00 00 58 58 58 58 58 00 00 00 00 58 58 00 00 00 00 00 58 58 58 58 58 00 00 00 00 00 00 00 00 00 58 00 58 58 58 58 58 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 58 58 58 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 58 58 58 58 00 00 58 58 58 58 58 00 00 58 58 58 00 00 00 58 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 58 58 58 58 58 58 00 00 00 00 00 58 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 58 58 58 00 58 58 58 00 00 00 00 00 00 58 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 58 58 58 58 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 58 58 00 00 00 58 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 58 58 58 00 58 58 58 58 58 58 00 00 58 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 58 58 58 58 58 00 58 58 58 00 00 00 58 58 58 00 58 58 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 58 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 58 58 58 00 00 58 58 00 00 00 00 00 00 58 58 58 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 58 58 00 00 58 58 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 58 58 00 58 58 58 58 58 00 00 00 58 00 58 58 00 58 58 58 58 58 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 58 58 58 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 58 58 00 00 58 58 58 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 58 00 00 00 00 00 00 58 58 58 58 58 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00
*/
