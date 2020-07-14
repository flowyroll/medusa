.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1124c, %r14
nop
nop
nop
dec %r11
mov (%r14), %rbx
nop
nop
nop
add $22826, %rax
lea addresses_A_ht+0x188a4, %r14
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
inc %r14
lea addresses_WC_ht+0x15a64, %r11
nop
nop
nop
nop
sub %r9, %r9
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x2bbe, %rbx
nop
nop
dec %rbp
mov (%rbx), %r14
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x1a834, %rbp
nop
nop
sub $6355, %rbx
movl $0x61626364, (%rbp)
xor $17166, %r11
lea addresses_normal_ht+0x14be4, %r9
nop
nop
add $58518, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x111c4, %r9
nop
nop
nop
inc %rbp
mov (%r9), %r14
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x170f4, %rbx
xor %r9, %r9
movb (%rbx), %r11b
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x9b04, %rdi
nop
inc %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
dec %rdi
lea addresses_D_ht+0xe1c4, %rsi
lea addresses_UC_ht+0x1ea4, %rdi
nop
nop
cmp %rax, %rax
mov $108, %rcx
rep movsb
nop
and %r14, %r14
lea addresses_WC_ht+0xb4a4, %rdi
nop
nop
nop
nop
nop
add $33521, %r14
movw $0x6162, (%rdi)
nop
cmp $13652, %rbx
lea addresses_normal_ht+0xa6a4, %rsi
nop
nop
nop
nop
and %rdi, %rdi
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x1d150, %rsi
nop
nop
sub %rax, %rax
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rcx
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x1b874, %rsi
lea addresses_WT+0x14698, %rdi
nop
nop
nop
xor $21527, %r11
mov $12, %rcx
rep movsl
sub %rdx, %rdx

// Load
mov $0x1edcad000000093c, %rsi
add $44442, %r14
mov (%rsi), %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_A+0x72a4, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rcx), %r11d
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 5, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'00': 1}
00
*/
