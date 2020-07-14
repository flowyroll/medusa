.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1586b, %rsi
lea addresses_UC_ht+0x1a7ab, %rdi
clflush (%rdi)
nop
xor $8216, %r13
mov $32, %rcx
rep movsq
cmp %r11, %r11
lea addresses_D_ht+0x1c0eb, %rsi
lea addresses_normal_ht+0xb93b, %rdi
nop
nop
sub $30174, %r10
mov $34, %rcx
rep movsb
nop
nop
nop
nop
xor $11665, %rdi
lea addresses_A_ht+0x19f03, %rsi
lea addresses_A_ht+0x506b, %rdi
clflush (%rsi)
nop
nop
cmp %r14, %r14
mov $30, %rcx
rep movsw
sub %r11, %r11
lea addresses_normal_ht+0x1766b, %r11
nop
nop
nop
sub $9871, %rcx
mov (%r11), %r14w
nop
nop
xor $56271, %rsi
lea addresses_normal_ht+0x172eb, %r10
nop
nop
nop
nop
nop
xor $27450, %r11
mov (%r10), %rcx
nop
nop
add %r11, %r11
lea addresses_D_ht+0x1e3eb, %rsi
lea addresses_WT_ht+0x14b6b, %rdi
nop
cmp $2107, %r9
mov $13, %rcx
rep movsl
nop
nop
add $795, %rsi
lea addresses_A_ht+0x40eb, %r10
nop
nop
nop
add $17310, %r9
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
add $61820, %rdi
lea addresses_A_ht+0xaeb, %rsi
add %rdi, %rdi
mov (%rsi), %r13d
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0xc5cb, %rsi
lea addresses_normal_ht+0x1c2cb, %rdi
nop
nop
nop
cmp %r13, %r13
mov $124, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x190eb, %rcx
add %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x16eeb, %rsi
lea addresses_WC_ht+0x1ef8b, %rdi
nop
nop
cmp %r9, %r9
mov $77, %rcx
rep movsq
add $25133, %r13
lea addresses_D_ht+0xbceb, %r9
nop
nop
nop
dec %r13
mov (%r9), %r10
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x1f6b, %rsi
lea addresses_normal_ht+0x7ceb, %rdi
nop
nop
nop
nop
nop
sub $43253, %r9
mov $115, %rcx
rep movsb
nop
nop
sub $14576, %rsi
lea addresses_D_ht+0x522b, %rdi
nop
nop
nop
sub %rcx, %rcx
mov (%rdi), %r9
nop
nop
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rcx

// Faulty Load
lea addresses_WT+0x1aceb, %r8
nop
nop
nop
xor %rcx, %rcx
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'39': 228}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
