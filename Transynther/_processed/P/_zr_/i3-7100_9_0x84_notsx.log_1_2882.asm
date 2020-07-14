.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1ea74, %rsi
lea addresses_A_ht+0x15142, %rdi
nop
nop
nop
sub $43840, %r15
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
add $50494, %r9
lea addresses_WC_ht+0x19ea6, %rcx
nop
nop
cmp $63112, %rbp
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x13074, %rcx
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
cmp $6093, %r11

// Store
lea addresses_WC+0x18034, %rdi
nop
nop
cmp $9775, %r15
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
xor %rsi, %rsi

// Store
lea addresses_WC+0xed74, %rdi
nop
nop
nop
cmp $22163, %r14
movw $0x5152, (%rdi)
nop
dec %rcx

// Load
lea addresses_PSE+0x12274, %rdi
nop
nop
nop
sub $15934, %rcx
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
xor $64524, %rdi

// Faulty Load
mov $0x574, %rcx
nop
xor $59121, %rax
mov (%rcx), %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
