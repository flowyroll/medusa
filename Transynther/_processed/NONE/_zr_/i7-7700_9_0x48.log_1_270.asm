.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1e779, %rsi
lea addresses_normal_ht+0x13499, %rdi
nop
nop
nop
nop
nop
cmp $20799, %r8
mov $50, %rcx
rep movsw
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0xd09, %r11
nop
nop
dec %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %r11
movaps %xmm4, (%r11)
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1cc89, %r11
clflush (%r11)
nop
nop
nop
nop
cmp $50047, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x155b9, %r11
clflush (%r11)
xor $35795, %rdx
movb (%r11), %cl
nop
nop
nop
nop
cmp $34439, %r8
lea addresses_UC_ht+0x1d79, %rsi
lea addresses_normal_ht+0x33c7, %rdi
nop
nop
cmp %r15, %r15
mov $64, %rcx
rep movsb
nop
cmp $48467, %rdx
lea addresses_normal_ht+0x41f5, %rsi
lea addresses_normal_ht+0x9a79, %rdi
nop
nop
nop
nop
inc %r11
mov $29, %rcx
rep movsw
nop
nop
nop
and $14083, %r11
lea addresses_D_ht+0x1eca5, %r13
nop
nop
add $18360, %rdi
movl $0x61626364, (%r13)
nop
lfence
lea addresses_WC_ht+0xcf79, %r8
xor $20459, %r11
mov (%r8), %edx
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x14b79, %rdi
nop
nop
nop
sub $27290, %rdx
movw $0x6162, (%rdi)
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1de41, %rsi
lea addresses_D_ht+0x1dd5d, %rdi
nop
nop
nop
nop
dec %r8
mov $48, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0xf0b9, %rsi
nop
and $59739, %r8
movw $0x6162, (%rsi)
add %r11, %r11
lea addresses_UC_ht+0x5779, %rsi
lea addresses_WC_ht+0x14279, %rdi
nop
nop
nop
cmp $6716, %r13
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x1b7b0, %rdi
sub %rdx, %rdx
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x1e481, %r8
nop
nop
inc %rsi
mov (%r8), %r13w
nop
cmp $7985, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1b899, %rsi
lea addresses_A+0xb379, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $119, %rcx
rep movsw
nop
nop
add $2181, %rbx

// Faulty Load
lea addresses_A+0xb379, %rdi
nop
nop
nop
nop
nop
and $12361, %rcx
mov (%rdi), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'00': 1}
00
*/
