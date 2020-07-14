.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14a8f, %rax
dec %r10
movb (%rax), %r13b
nop
sub $54507, %r8
lea addresses_WT_ht+0x9e8f, %rsi
lea addresses_WC_ht+0x2e8f, %rdi
nop
nop
nop
nop
xor $46848, %r11
mov $106, %rcx
rep movsl
nop
nop
add $60945, %rsi
lea addresses_WT_ht+0x1c44f, %r10
nop
nop
nop
xor $48787, %r13
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
inc %rcx
lea addresses_WT_ht+0x108cf, %rsi
lea addresses_WC_ht+0xb59b, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $4, %rcx
rep movsl
xor $42304, %r10
lea addresses_normal_ht+0x700f, %rdi
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
nop
nop
xor $4224, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x1a003, %rsi
lea addresses_normal+0xe68f, %rdi
clflush (%rdi)
xor $18699, %rbx
mov $104, %rcx
rep movsb
add $32288, %r8

// Load
lea addresses_WT+0x16f7f, %rsi
and %rbp, %rbp
movb (%rsi), %r11b
nop
nop
nop
nop
nop
xor $36664, %r8

// Store
mov $0x148ec00000000a3f, %r8
nop
nop
cmp $7587, %rcx
movl $0x51525354, (%r8)
nop
nop
nop
add $9668, %r11

// Faulty Load
lea addresses_normal+0xe68f, %r8
xor $21192, %rcx
mov (%r8), %r11w
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'38': 63}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
