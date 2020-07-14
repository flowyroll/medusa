.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x743d, %r13
nop
nop
nop
nop
nop
sub $25807, %rdx
mov (%r13), %r12w
nop
and $17059, %r12
lea addresses_WC_ht+0x178bd, %r11
nop
nop
add %rdx, %rdx
mov (%r11), %r10d
dec %r13
lea addresses_UC_ht+0x3bbd, %rsi
nop
nop
nop
add $16575, %rbx
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
lfence
lea addresses_WC_ht+0x11003, %rbx
nop
nop
add %r10, %r10
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x1efd, %rsi
nop
nop
nop
nop
xor %r10, %r10
mov (%rsi), %r11
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0xe41b, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
cmp $4705, %r11
lea addresses_WC_ht+0x1043d, %r11
clflush (%r11)
nop
add $47989, %r13
mov (%r11), %esi
nop
xor %r13, %r13
lea addresses_WC_ht+0x283d, %rsi
lea addresses_A_ht+0x9ab5, %rdi
clflush (%rsi)
nop
nop
and %r12, %r12
mov $116, %rcx
rep movsl
inc %r12
lea addresses_D_ht+0x1d03d, %rsi
lea addresses_UC_ht+0xc23d, %rdi
nop
nop
xor %rbx, %rbx
mov $48, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x1445d, %rsi
lea addresses_D_ht+0x7cf2, %rdi
nop
nop
nop
nop
dec %r10
mov $104, %rcx
rep movsl
nop
sub %r10, %r10
lea addresses_normal_ht+0xd575, %r13
nop
sub $44720, %r10
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xa53d, %rsi
lea addresses_UC_ht+0x833d, %rdi
nop
nop
nop
nop
nop
add $17901, %r13
mov $72, %rcx
rep movsl
nop
add $24427, %r10
lea addresses_normal_ht+0x180d4, %r10
and $19396, %r12
movb (%r10), %bl
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x16c3d, %rdx
clflush (%rdx)
nop
nop
xor $59353, %rdi
movb $0x61, (%rdx)
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0xec3d, %r10
cmp %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
nop
sub $54310, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x189ee, %rdx
clflush (%rdx)
nop
and $40185, %rbx
movl $0x51525354, (%rdx)

// Exception!!!
nop
nop
nop
mov (0), %r12
nop
nop
cmp $60762, %rdx

// Store
lea addresses_PSE+0x48af, %r9
nop
nop
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r9)
nop
nop
dec %r13

// Store
lea addresses_RW+0x343d, %r9
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
xor %rbx, %rbx

// Store
lea addresses_RW+0xef20, %r12
clflush (%r12)
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%r12)
cmp $18090, %rcx

// Store
lea addresses_PSE+0x1d53d, %r9
add $21606, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
nop
nop
add $42475, %rbx

// Load
lea addresses_normal+0x1a43d, %rdx
nop
nop
inc %r9
mov (%rdx), %bx
nop
inc %r12

// Store
lea addresses_WC+0xb63d, %rcx
nop
nop
nop
nop
add $35571, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
dec %rdx

// Load
mov $0xbd, %rbx
nop
nop
nop
and %rdx, %rdx
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
inc %rdi

// Load
lea addresses_RW+0x343d, %rdi
nop
nop
nop
inc %r12
mov (%rdi), %ebx
nop
nop
nop
nop
add $3810, %rcx

// Faulty Load
lea addresses_RW+0x343d, %rdi
nop
nop
nop
nop
sub $12482, %rcx
mov (%rdi), %dx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'58': 18169}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
