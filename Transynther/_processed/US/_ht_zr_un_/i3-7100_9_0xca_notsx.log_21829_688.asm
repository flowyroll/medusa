.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1e655, %rbx
xor %r8, %r8
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
xor $64207, %rcx
lea addresses_WC_ht+0x48b1, %r10
nop
cmp $46980, %r8
movw $0x6162, (%r10)
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x16ebd, %r8
nop
nop
cmp $22802, %r12
movw $0x6162, (%r8)
cmp %r8, %r8
lea addresses_A_ht+0x11015, %rsi
lea addresses_WT_ht+0x2607, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rdx, %rdx
mov $123, %rcx
rep movsq
cmp $31038, %rdi
lea addresses_WT_ht+0xfe55, %r12
xor %rsi, %rsi
mov (%r12), %r10d
nop
and %r10, %r10
lea addresses_D_ht+0x16dad, %rsi
lea addresses_WC_ht+0x3755, %rdi
nop
nop
nop
add %r10, %r10
mov $111, %rcx
rep movsq
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0xd252, %rdx
nop
inc %rcx
mov (%rdx), %r10w
nop
nop
nop
xor $1029, %rdx
lea addresses_WT_ht+0xd91, %r8
nop
nop
nop
nop
nop
add %r10, %r10
mov (%r8), %r12
nop
nop
nop
nop
nop
xor $28516, %r8
lea addresses_A_ht+0xaff3, %r10
clflush (%r10)
nop
add $61747, %rbx
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
sub $15243, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_US+0x19655, %rdx
cmp %r8, %r8
mov (%rdx), %r10d
nop
nop
nop
nop
nop
and $55740, %rbx

// Load
mov $0x410de10000000a55, %r8
nop
nop
nop
xor %rbp, %rbp
movb (%r8), %r10b
nop
sub $47458, %rbx

// Store
lea addresses_US+0x3655, %rbx
nop
nop
nop
nop
inc %rdx
movw $0x5152, (%rbx)
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x689cbe00000006cf, %r10
and %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
xor $50648, %rdx

// Store
lea addresses_D+0x2b8d, %rdx
nop
xor $11329, %rcx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
and $58866, %rbx

// Faulty Load
lea addresses_US+0x3655, %rcx
nop
nop
nop
nop
add %rdx, %rdx
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'45': 13237, '05': 5, '08': 9, '00': 7693, '46': 885}
45 45 45 45 45 45 00 46 45 00 45 00 00 45 00 00 45 45 00 00 00 45 45 45 00 45 45 00 00 45 00 00 00 45 00 00 45 45 00 00 45 45 00 45 00 45 45 45 45 00 45 00 45 45 45 45 45 00 00 45 45 45 00 00 45 00 00 45 45 00 45 00 45 45 46 00 00 45 46 00 45 00 45 45 45 45 00 45 00 45 00 00 00 45 00 45 45 45 45 45 00 45 45 45 45 00 45 00 45 45 00 45 00 45 45 00 00 45 00 45 45 45 00 00 00 45 45 45 45 00 45 00 00 45 00 45 00 45 45 00 45 00 45 00 45 00 45 00 00 45 46 45 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 00 45 45 45 00 45 45 00 00 00 00 45 45 45 00 45 45 45 00 00 45 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 00 46 45 00 45 00 45 46 45 45 00 00 00 45 45 45 45 00 00 46 45 00 00 45 00 45 45 00 45 45 45 45 45 46 45 00 00 45 45 00 45 45 00 00 45 46 45 00 45 45 00 45 00 45 00 00 45 45 45 45 00 00 00 45 00 45 45 46 00 45 00 00 45 00 45 00 45 00 45 45 45 45 00 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 46 45 45 00 00 45 45 45 00 00 45 45 45 45 00 45 00 45 00 45 45 45 45 45 00 45 00 00 00 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 45 00 45 00 45 45 45 46 45 45 00 45 45 45 00 45 45 00 45 46 00 45 45 45 00 45 00 45 00 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 00 00 05 00 45 00 45 00 45 00 00 45 00 45 45 45 45 45 00 00 46 45 45 00 45 00 45 45 45 45 45 00 45 45 45 45 45 45 00 45 00 46 45 46 00 45 00 45 45 00 00 45 00 45 00 45 45 45 00 45 45 45 45 45 45 46 00 00 00 45 00 45 45 45 45 45 00 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 00 00 00 00 00 45 00 45 45 45 45 00 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 00 45 45 45 00 45 45 45 00 45 45 45 45 00 45 00 45 45 45 45 00 00 45 46 45 45 45 00 45 00 45 45 45 45 45 45 00 46 46 45 46 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 46 00 45 45 45 46 45 00 00 00 45 46 45 00 00 45 45 45 00 00 45 00 45 00 00 00 45 45 00 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 46 45 00 45 46 45 00 00 45 45 00 45 00 45 45 46 00 45 00 45 00 45 46 45 45 45 45 00 00 00 00 45 45 46 45 00 00 45 45 45 45 45 00 00 45 45 45 00 45 00 45 45 45 45 46 45 45 00 45 45 00 00 45 45 00 45 45 45 00 00 45 45 00 46 45 45 46 00 00 45 00 00 46 45 45 45 45 00 00 45 45 45 00 45 45 45 45 00 00 46 00 45 45 45 00 45 00 00 45 45 00 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 46 00 00 45 45 45 00 45 00 45 45 00 45 00 45 00 00 00 45 00 45 00 00 45 45 46 00 00 45 45 45 00 45 45 00 45 45 00 00 00 00 45 45 00 45 45 45 00 45 45 45 46 00 00 00 45 45 00 00 45 00 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 00 45 45 46 45 45 00 45 45 00 00 45 00 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 00 00 00 00 45 45 00 45 00 00 45 45 00 45 45 00 45 45 45 00 00 45 45 00 45 00 00 45 00 45 45 45 45 00 00 00 00 00 00 45 45 45 00 00 00 45 45 00 45 45 00 45
*/
