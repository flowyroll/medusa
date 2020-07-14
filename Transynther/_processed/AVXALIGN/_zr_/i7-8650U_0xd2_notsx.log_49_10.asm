.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x126ef, %r13
nop
cmp $28261, %rdi
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
add $14610, %r9
lea addresses_D_ht+0x1caef, %rcx
nop
xor %r11, %r11
mov (%rcx), %esi
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x6e41, %r13
cmp $6661, %r11
mov (%r13), %si
nop
and $39220, %r9
lea addresses_D_ht+0x197ef, %rsi
lea addresses_UC_ht+0x1c835, %rdi
nop
nop
nop
nop
xor $35870, %r11
mov $59, %rcx
rep movsb
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x148d5, %rsi
add $30589, %r9
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
sub %rdi, %rdi
lea addresses_A_ht+0x38ef, %r11
nop
nop
nop
nop
xor $1923, %r10
mov (%r11), %r13w
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1afc7, %rdi
nop
nop
nop
nop
cmp $47767, %rsi
mov (%rdi), %r9d
nop
nop
inc %r13
lea addresses_WC_ht+0x11eef, %r11
add %r13, %r13
mov (%r11), %esi
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WC+0xe2ef, %rsi
nop
nop
nop
cmp %r9, %r9
mov (%rsi), %di
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
mov $0x77d7700000002ef, %rdi
and $64421, %r10
mov (%rdi), %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
