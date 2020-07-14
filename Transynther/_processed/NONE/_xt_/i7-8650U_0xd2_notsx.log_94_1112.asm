.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x4ae7, %rsi
nop
nop
nop
nop
nop
add %r13, %r13
movw $0x6162, (%rsi)
xor $22655, %r11
lea addresses_WT_ht+0x739f, %rsi
nop
nop
nop
nop
nop
add %rdx, %rdx
movb $0x61, (%rsi)
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x3bdb, %r11
nop
nop
nop
nop
nop
add %rax, %rax
movb $0x61, (%r11)
nop
nop
dec %rax
lea addresses_normal_ht+0x12ce7, %r15
and $41622, %rsi
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x18e7, %rsi
lea addresses_D_ht+0x1beb7, %rdi
nop
nop
and $39067, %rdx
mov $2, %rcx
rep movsb
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x4327, %r10
nop
nop
nop
sub $49153, %rax
mov (%r10), %rsi
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x1d967, %r11
sub $53661, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r11)
nop
dec %rsi
lea addresses_WC_ht+0xece7, %r13
nop
nop
nop
nop
nop
and $39924, %rcx
mov (%r13), %edi
nop
xor $13768, %r15
lea addresses_WT_ht+0x9347, %rsi
lea addresses_A_ht+0x168e7, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $71, %rcx
rep movsw
nop
nop
nop
nop
xor $10928, %rax
lea addresses_A_ht+0xdc67, %r10
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x9c17, %rsi
lea addresses_UC_ht+0x1a2e7, %rdi
nop
add %r15, %r15
mov $76, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $17263, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_A+0x70e7, %r15
nop
nop
nop
nop
nop
xor $55272, %rbx
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
inc %rdx

// Load
mov $0x40622400000000e7, %rcx
nop
nop
add $29917, %rbp
movaps (%rcx), %xmm2
vpextrq $0, %xmm2, %r15
nop
inc %rbx

// Faulty Load
lea addresses_RW+0xace7, %r15
nop
nop
nop
nop
nop
inc %r8
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'32': 94}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
