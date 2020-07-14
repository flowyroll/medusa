.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x347a, %rbp
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %rbp
movntdq %xmm1, (%rbp)
sub %r14, %r14
lea addresses_normal_ht+0x1105a, %rsi
lea addresses_D_ht+0xc45a, %rdi
xor $55025, %rdx
mov $56, %rcx
rep movsl
add $4840, %r8
lea addresses_normal_ht+0x15da, %rsi
lea addresses_WC_ht+0x585a, %rdi
nop
nop
nop
nop
xor $14181, %r14
mov $86, %rcx
rep movsw
cmp $44040, %rdx
lea addresses_UC_ht+0x1b05a, %r8
nop
nop
nop
cmp %r14, %r14
mov (%r8), %ebp
and $37149, %r14
lea addresses_normal_ht+0x60f0, %rbp
clflush (%rbp)
nop
nop
nop
cmp %rcx, %rcx
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x12956, %rcx
nop
nop
nop
cmp $59895, %r14
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xa81a, %r8
clflush (%r8)
nop
nop
dec %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x49af, %rdx
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdx)
nop
sub %r14, %r14
lea addresses_WC_ht+0x1df5a, %rdx
nop
lfence
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rdx)
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x488e, %rbp
clflush (%rbp)
nop
nop
nop
nop
sub $18267, %rdx
movw $0x6162, (%rbp)
add %r8, %r8
lea addresses_normal_ht+0x45a, %rcx
and $32740, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rcx)
nop
cmp $63372, %rdx
lea addresses_UC_ht+0x103f0, %rsi
xor %r8, %r8
mov (%rsi), %rcx
nop
nop
sub $22678, %rcx
lea addresses_WC_ht+0x1b046, %rdi
clflush (%rdi)
nop
xor %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
nop
nop
nop
xor $57160, %rsi
lea addresses_WC_ht+0xf53a, %rsi
lea addresses_UC_ht+0xfe5a, %rdi
nop
nop
nop
nop
inc %rdx
mov $62, %rcx
rep movsw
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_US+0x1005a, %rax
nop
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%rax)
nop
nop
nop
nop
nop
inc %rbp

// Store
mov $0x454b230000000e5a, %r8
nop
nop
inc %rax
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
inc %rdx

// Load
mov $0x630, %rax
nop
nop
nop
xor %r10, %r10
vmovaps (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
cmp $15521, %rbp

// Store
lea addresses_US+0x245a, %rax
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
xor %r8, %r8

// Store
lea addresses_US+0x1005a, %rax
nop
nop
nop
sub $37298, %rbx
movb $0x51, (%rax)
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_US+0x1005a, %r11
nop
add %rdx, %rdx
movb (%r11), %bl
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
