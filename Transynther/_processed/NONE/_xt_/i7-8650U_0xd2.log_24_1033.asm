.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xdf28, %rdi
cmp %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
nop
xor $34185, %r11
lea addresses_normal_ht+0x122c0, %r9
nop
nop
cmp %rax, %rax
movw $0x6162, (%r9)
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0xa848, %rsi
lea addresses_UC_ht+0x44a8, %rdi
dec %rdx
mov $48, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x6bc8, %r9
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
cmp $3374, %rcx
lea addresses_normal_ht+0x35c4, %rax
sub %r11, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%rax)
nop
and %rdx, %rdx
lea addresses_WC_ht+0x2fe8, %rdi
nop
nop
nop
sub $63886, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1c42e, %rsi
lea addresses_WC_ht+0x9fc8, %rdi
nop
nop
nop
nop
nop
sub $55119, %r10
mov $49, %rcx
rep movsb
nop
nop
add $19969, %r11
lea addresses_WT_ht+0x1e1c8, %rsi
lea addresses_normal_ht+0x157c8, %rdi
clflush (%rdi)
nop
nop
and %rax, %rax
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x18084, %r10
nop
nop
nop
nop
nop
inc %rsi
mov (%r10), %ax
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x1e698, %r10
nop
and $47127, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %r10
vmovntdq %ymm5, (%r10)
nop
inc %r10
lea addresses_D_ht+0xe630, %rsi
lea addresses_A_ht+0x161c8, %rdi
clflush (%rdi)
nop
cmp $61597, %r9
mov $53, %rcx
rep movsq
nop
nop
nop
and $44677, %rdx
lea addresses_normal_ht+0x90c8, %rax
nop
nop
nop
nop
and $8184, %rdi
mov (%rax), %esi
cmp %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_PSE+0x39c8, %rdi
nop
nop
nop
nop
nop
add $63682, %rax
mov (%rdi), %edx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'33': 24}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
