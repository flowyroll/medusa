.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xfef0, %rbp
clflush (%rbp)
sub $47131, %rbx
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
add $45527, %r15
lea addresses_normal_ht+0x171c6, %rsi
lea addresses_UC_ht+0x8b42, %rdi
nop
nop
add $65126, %r11
mov $40, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x10d36, %r15
nop
xor $33870, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x1b206, %rcx
nop
and $40888, %rdi
mov (%rcx), %bx
nop
nop
add $34595, %rbx
lea addresses_WT_ht+0x82aa, %rbp
xor $25178, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%rbp)
add %rbp, %rbp
lea addresses_D_ht+0x16896, %rsi
lea addresses_UC_ht+0x1eb6, %rdi
nop
dec %r10
mov $101, %rcx
rep movsb
nop
nop
nop
xor $4295, %r11
lea addresses_WT_ht+0x86f6, %rsi
lea addresses_WC_ht+0x3ab6, %rdi
nop
cmp $23807, %r10
mov $93, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x1d073, %rcx
nop
nop
nop
nop
nop
cmp $8035, %rbp
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
cmp $12575, %rsi
lea addresses_WT_ht+0x6af6, %rsi
inc %r10
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
cmp $65031, %rsi
lea addresses_UC_ht+0x35b6, %rdi
nop
nop
add %r15, %r15
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0xe0c6, %r11
nop
nop
and $61081, %rsi
movl $0x61626364, (%r11)
nop
and $42053, %r10
lea addresses_D_ht+0xaf06, %rsi
lea addresses_WT_ht+0x16ab6, %rdi
nop
nop
inc %rbx
mov $94, %rcx
rep movsw
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x18f7e, %r10
nop
nop
nop
add %rbp, %rbp
mov (%r10), %rcx
nop
nop
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1b2f6, %rsi
lea addresses_D+0x1deb6, %rdi
nop
and $28120, %r13
mov $70, %rcx
rep movsq
nop
nop
nop
xor $16207, %rdi

// Store
lea addresses_WC+0x88b6, %rsi
nop
nop
nop
nop
dec %rbp
movw $0x5152, (%rsi)
nop
nop
nop
nop
sub $27776, %r14

// Store
lea addresses_normal+0xb2b6, %r14
nop
nop
nop
cmp $27965, %r10
movb $0x51, (%r14)
nop
nop
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_normal+0x595e, %rsi
lea addresses_WC+0x1bb36, %rdi
nop
cmp $51146, %rbp
mov $14, %rcx
rep movsl
nop
nop
nop
sub %rcx, %rcx

// Load
lea addresses_A+0x3eb6, %rsi
nop
sub $54127, %rcx
mov (%rsi), %r10
and $8451, %rcx

// Load
lea addresses_A+0x121d9, %rbp
nop
nop
nop
cmp $59974, %r13
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
sub $26984, %rbp

// Load
lea addresses_US+0xe9e6, %rsi
nop
nop
nop
nop
inc %rcx
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi

// Exception!!!
nop
nop
nop
mov (0), %r10
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_D+0x14192, %r14
nop
sub %rsi, %rsi
movb $0x51, (%r14)
nop
nop
sub %rsi, %rsi

// Store
lea addresses_US+0x17d36, %r13
nop
nop
nop
nop
nop
sub $37333, %rcx
movl $0x51525354, (%r13)
nop
nop
and %rbp, %rbp

// Store
lea addresses_A+0x31f6, %r13
nop
nop
cmp $61443, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r13)
and %rbp, %rbp

// Faulty Load
lea addresses_UC+0xcab6, %rsi
nop
nop
nop
nop
nop
sub $1379, %rcx
vmovaps (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 1892, '35': 5, '32': 6103, '00': 367, '49': 75}
00 32 32 46 32 32 32 32 46 32 00 46 32 32 32 32 32 46 32 46 46 32 32 32 32 46 32 32 32 32 46 32 00 32 32 32 32 46 32 32 32 46 32 49 46 32 46 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 46 32 46 46 32 32 32 32 46 32 46 32 32 46 00 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 00 49 32 32 46 32 46 32 32 32 32 49 32 32 46 49 32 46 32 32 32 32 32 46 32 46 32 32 32 32 46 32 32 32 32 32 46 00 00 32 32 00 32 32 46 32 32 32 46 32 32 32 32 32 46 32 32 00 32 32 46 46 46 32 32 32 32 32 32 00 32 32 46 32 32 32 46 32 32 46 32 32 46 46 32 32 32 32 00 32 32 32 46 46 32 32 32 32 32 46 00 32 46 32 32 32 49 00 32 32 46 32 32 32 32 46 32 46 32 46 32 32 32 46 32 49 32 32 00 32 46 32 46 32 32 32 32 32 32 46 32 32 46 32 32 32 32 32 46 32 00 32 32 46 46 32 32 32 32 32 32 46 32 32 46 32 00 32 32 32 46 46 46 32 00 32 32 32 46 32 46 32 32 32 46 32 32 32 32 32 32 32 32 32 46 32 32 46 32 32 32 00 00 32 32 32 46 32 32 32 32 32 32 46 32 32 32 32 32 32 46 46 46 32 32 32 32 32 32 32 46 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 46 46 32 32 32 46 46 32 32 32 32 32 32 32 46 46 32 32 32 32 32 46 46 32 32 32 32 32 32 46 46 46 32 46 32 46 32 32 32 46 32 32 32 32 32 46 32 32 00 32 32 32 32 32 46 46 32 32 32 32 46 32 32 32 32 46 32 32 32 32 32 32 46 32 46 32 46 00 46 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 46 00 32 32 46 32 32 46 46 46 32 46 46 32 00 32 32 46 46 32 32 32 32 32 32 00 46 32 46 46 32 46 32 32 32 46 46 32 32 32 32 46 32 32 46 46 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 46 32 00 32 00 32 32 46 32 32 32 32 46 32 46 32 32 32 32 32 46 32 46 32 46 46 32 46 32 32 32 46 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 46 32 32 00 32 32 32 32 32 32 32 32 46 46 32 32 32 32 32 32 32 46 32 32 32 32 32 00 32 46 32 46 32 32 46 32 46 32 32 32 46 32 46 32 32 46 32 46 32 32 32 46 46 32 32 32 46 46 32 32 32 32 32 32 32 46 32 32 32 46 32 32 32 32 46 32 32 46 32 32 00 32 32 32 32 46 32 32 46 00 32 32 32 32 32 32 32 46 46 32 32 32 32 32 32 46 32 46 46 32 32 32 32 46 32 32 32 00 46 32 32 32 46 32 32 00 32 46 32 32 32 32 32 32 46 46 32 32 32 46 32 32 32 46 32 32 32 32 32 46 32 46 32 32 32 32 32 32 32 00 32 46 32 32 46 32 32 32 32 32 32 32 32 32 32 46 32 46 32 32 32 46 46 32 32 32 32 00 32 46 46 46 46 46 32 32 32 32 32 32 32 46 46 32 46 46 32 32 49 32 46 32 32 32 32 32 32 46 32 32 46 32 00 00 46 46 32 46 32 32 46 32 32 32 46 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 46 46 46 46 32 46 46 46 46 32 32 32 32 46 32 46 46 32 32 32 46 32 32 32 32 46 32 32 32 46 46 00 32 46 32 32 32 32 32 32 32 32 49 32 00 46 32 32 32 32 32 32 46 46 32 32 32 32 00 46 46 46 32 32 32 32 32 32 32 32 32 46 00 32 32 32 32 46 00 49 32 46 46 32 32 32 00 32 32 32 32 32 46 32 32 32 32 32 46 00 32 32 32 32 32 32 32 32 32 32 32 00 46 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 46 32 46 32 32 46 32 32 32 32 32 46 46 32 00 32 32 32 32 32 32 46 46 32 32 32 46 46 32 32 46 32 32 00 32
*/
