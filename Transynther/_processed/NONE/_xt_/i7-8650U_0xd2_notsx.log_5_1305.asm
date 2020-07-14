.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xaecb, %rsi
lea addresses_UC_ht+0x177cb, %rdi
clflush (%rdi)
nop
cmp $51053, %rax
mov $34, %rcx
rep movsw
nop
add $65420, %r13
lea addresses_normal_ht+0x5bf, %r8
cmp %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
sub $53616, %rdi
lea addresses_D_ht+0x7dcb, %rax
nop
nop
and %r13, %r13
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x17f21, %rsi
lea addresses_UC_ht+0x3407, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $14, %rcx
rep movsl
nop
nop
nop
nop
nop
and $8282, %r10
lea addresses_WT_ht+0xeb98, %rcx
nop
nop
and $3607, %r13
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x10c97, %rsi
nop
nop
nop
sub $16358, %rax
movb $0x61, (%rsi)
nop
cmp %r8, %r8
lea addresses_WC_ht+0x48cb, %r13
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
and $46758, %rdi
lea addresses_WC_ht+0x120bd, %rdi
nop
nop
nop
add $22186, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
nop
cmp $6609, %rsi
lea addresses_D_ht+0x10ecb, %rsi
lea addresses_UC_ht+0xb6cb, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r13
mov $103, %rcx
rep movsw
nop
nop
and $23019, %rsi
lea addresses_D_ht+0xa4cb, %rax
nop
nop
nop
cmp $45730, %r13
movl $0x61626364, (%rax)
add $19726, %r10
lea addresses_UC_ht+0x13fe0, %rsi
nop
nop
nop
inc %rax
mov (%rsi), %edx
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0xf2cb, %rsi
lea addresses_UC_ht+0x58fb, %rdi
clflush (%rsi)
nop
nop
and $16936, %r13
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $6321, %rdi
lea addresses_UC_ht+0x36cb, %r8
nop
dec %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r8)
nop
and $60112, %r10
lea addresses_normal_ht+0xdacb, %rsi
inc %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
add $48293, %r8
lea addresses_D_ht+0x1d7b7, %rsi
lea addresses_normal_ht+0x15033, %rdi
nop
nop
nop
nop
nop
xor $58182, %r10
mov $6, %rcx
rep movsw
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0x1dfe4, %r10
nop
cmp $59513, %r15
movl $0x51525354, (%r10)
nop
nop
nop
xor $14077, %r11

// Load
mov $0x4b, %rbx
cmp $58741, %rbp
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_RW+0x10ecb, %r11
nop
nop
nop
nop
and %rbx, %rbx
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'32': 5}
32 32 32 32 32
*/
