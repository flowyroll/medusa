.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xb19c, %rax
nop
nop
nop
nop
nop
and $23443, %r12
mov (%rax), %r8
nop
nop
nop
nop
xor $59594, %r10
lea addresses_WT_ht+0x11f9c, %rsi
lea addresses_WC_ht+0x1e79c, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r11, %r11
mov $15, %rcx
rep movsw
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0xcddb, %r8
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %r8
movaps %xmm5, (%r8)
nop
sub %rcx, %rcx
lea addresses_D_ht+0x13c1c, %rsi
lea addresses_D_ht+0xd7b3, %rdi
and $44453, %r11
mov $71, %rcx
rep movsl
nop
and $23118, %r8
lea addresses_normal_ht+0x14d6e, %r12
nop
nop
nop
cmp $50223, %r10
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x66ac, %rax
nop
nop
nop
nop
add %r10, %r10
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
add %r8, %r8
lea addresses_UC_ht+0x76e4, %r12
nop
nop
nop
add %r11, %r11
mov (%r12), %rcx
nop
nop
nop
nop
cmp $34827, %rsi
lea addresses_WT_ht+0x148a8, %r10
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%r10), %r11w
nop
sub $10657, %rcx
lea addresses_D_ht+0x124a, %rsi
nop
nop
nop
nop
xor $14211, %r11
mov (%rsi), %r8w
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x721c, %rsi
lea addresses_normal_ht+0x921c, %rdi
nop
nop
nop
nop
nop
sub $58153, %rax
mov $53, %rcx
rep movsw
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x4074, %r10
nop
nop
nop
nop
nop
and $1639, %rdi
movb (%r10), %r11b
nop
nop
nop
nop
xor $41578, %rdi
lea addresses_WT_ht+0x16b70, %rax
nop
nop
nop
nop
add $36459, %r8
movb (%rax), %r11b
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1601c, %r12
clflush (%r12)
nop
nop
nop
nop
xor %rax, %rax
mov (%r12), %rdi
nop
nop
nop
nop
nop
xor $25276, %r12
lea addresses_normal_ht+0x511c, %r10
cmp $41296, %rcx
mov (%r10), %si
nop
nop
nop
nop
nop
and $4072, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x34a16000000074d, %rax
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%rax)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbx
nop
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_US+0x1d61c, %rax
nop
cmp $37637, %r10
mov (%rax), %dx
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_US+0x289c, %rcx
nop
nop
inc %rbx
movb $0x51, (%rcx)
nop
nop
nop
cmp $10681, %rbp

// Store
lea addresses_WC+0x46dc, %r10
inc %rax
movw $0x5152, (%r10)
nop
add $29327, %r11

// Faulty Load
lea addresses_normal+0x241c, %rdx
nop
nop
nop
nop
nop
add %r10, %r10
mov (%rdx), %eax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'34': 13613}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
