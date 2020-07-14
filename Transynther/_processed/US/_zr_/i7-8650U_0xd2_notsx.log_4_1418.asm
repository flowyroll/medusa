.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1b5ff, %r8
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r8), %r11b
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x1ba5f, %rdx
and %r12, %r12
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
nop
sub $48393, %rsi
lea addresses_A_ht+0x180df, %rdx
nop
nop
nop
nop
nop
inc %rbx
mov (%rdx), %r12d
nop
nop
nop
nop
nop
sub $64761, %r12
lea addresses_D_ht+0x1dd9f, %r8
clflush (%r8)
inc %r11
movl $0x61626364, (%r8)
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x1dfb, %r11
nop
nop
nop
and $36521, %r12
movl $0x61626364, (%r11)
nop
inc %rdi
lea addresses_D_ht+0xa067, %r12
nop
nop
nop
nop
add %rdx, %rdx
movb (%r12), %bl
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1005f, %rsi
lea addresses_WC_ht+0x14227, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $0, %rcx
rep movsl
nop
inc %rbx
lea addresses_D_ht+0x1535f, %rsi
lea addresses_WT_ht+0x12fdf, %rdi
nop
nop
cmp $64494, %r8
mov $0, %rcx
rep movsl
nop
nop
nop
nop
cmp $43364, %rcx
lea addresses_D_ht+0x1c8df, %r12
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
and $63305, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0xb5c7, %r10
inc %rdi
movb $0x51, (%r10)
nop
nop
nop
cmp $46325, %rax

// Faulty Load
lea addresses_US+0xab5f, %rsi
nop
nop
nop
inc %rdx
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 4}
00 00 00 00
*/
