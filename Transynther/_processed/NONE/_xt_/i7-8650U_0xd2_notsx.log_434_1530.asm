.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13b8f, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x199ff, %rcx
nop
nop
xor %rbx, %rbx
movb (%rcx), %r13b
cmp %rax, %rax
lea addresses_WC_ht+0x7db7, %rax
nop
nop
nop
nop
nop
sub $16206, %rbx
movb (%rax), %cl
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x1213f, %rsi
lea addresses_D_ht+0x1af6, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $1, %rcx
rep movsw
and %rbx, %rbx
lea addresses_D_ht+0x161ff, %rsi
lea addresses_A_ht+0x21ff, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $12118, %r11
mov $39, %rcx
rep movsl
nop
xor $5197, %r11
lea addresses_WT_ht+0x1a207, %rcx
nop
cmp $10036, %r13
movl $0x61626364, (%rcx)
nop
nop
and $47272, %r13
lea addresses_WC_ht+0x1e4bf, %r13
clflush (%r13)
nop
nop
nop
xor $6363, %rbx
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
and $35351, %r10
lea addresses_normal_ht+0xd37f, %rsi
lea addresses_D_ht+0x1adbb, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
add $7553, %rax
mov $107, %rcx
rep movsl
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x4cbc, %r11
cmp %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
sub $8968, %rax
lea addresses_UC_ht+0x617f, %rcx
dec %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xe57f, %rsi
lea addresses_A_ht+0xe8ff, %rdi
nop
nop
nop
sub %r11, %r11
mov $53, %rcx
rep movsb
nop
nop
add $64309, %rcx
lea addresses_normal_ht+0x1477f, %r13
clflush (%r13)
nop
nop
nop
xor $63056, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x8057, %rbx
nop
nop
nop
nop
and %rdi, %rdi
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Faulty Load
lea addresses_RW+0x1f9ff, %rbp
xor $27320, %rax
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'32': 434}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
