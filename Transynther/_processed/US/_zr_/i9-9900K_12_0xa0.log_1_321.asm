.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xc407, %r10
xor %r15, %r15
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
nop
nop
nop
sub $47535, %r8
lea addresses_D_ht+0x124fb, %r9
nop
nop
nop
inc %r8
movw $0x6162, (%r9)
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x1e263, %r14
nop
nop
nop
nop
nop
xor $50877, %rdx
movw $0x6162, (%r14)
nop
nop
nop
and $12357, %r14
lea addresses_WT_ht+0x12fb, %rsi
lea addresses_D_ht+0x1c892, %rdi
sub %r15, %r15
mov $80, %rcx
rep movsb
add %r15, %r15
lea addresses_normal_ht+0xe03b, %rcx
clflush (%rcx)
cmp $30080, %rdx
movl $0x61626364, (%rcx)
nop
nop
nop
and $52979, %r14
lea addresses_D_ht+0x2efb, %rsi
lea addresses_normal_ht+0x1ddcb, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $41, %rcx
rep movsl
nop
nop
cmp $42814, %rdi
lea addresses_WT_ht+0xcfb, %r9
nop
nop
and %rdx, %rdx
movb $0x61, (%r9)
nop
nop
xor $59123, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x13237, %rsi
lea addresses_PSE+0x10c2b, %rdi
nop
nop
nop
add %r11, %r11
mov $95, %rcx
rep movsb
nop
nop
nop
nop
add $64836, %r14

// REPMOV
lea addresses_WC+0x84c3, %rsi
lea addresses_normal+0xf2fb, %rdi
nop
nop
nop
inc %rdx
mov $66, %rcx
rep movsb
nop
add $50597, %r14

// Store
lea addresses_D+0x53c4, %rdi
cmp $956, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_US+0x3cfb, %rdx
nop
nop
nop
nop
xor $59506, %rdi
movb (%rdx), %r9b
nop
nop
nop
nop
nop
xor $46936, %rcx

// Faulty Load
lea addresses_US+0x3cfb, %rcx
nop
nop
cmp %r11, %r11
mov (%rcx), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_PSE'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'00': 1}
00
*/
