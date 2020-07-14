.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x58bb, %rsi
lea addresses_normal_ht+0x134f, %rdi
nop
nop
nop
nop
inc %r9
mov $60, %rcx
rep movsw
and %rdx, %rdx
lea addresses_UC_ht+0x1584f, %r14
nop
nop
nop
add %r11, %r11
mov (%r14), %r9w
inc %rsi
lea addresses_WC_ht+0x45cf, %r11
clflush (%r11)
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x8d8f, %r11
nop
nop
inc %rsi
movw $0x6162, (%r11)
nop
nop
and $28999, %rdx
lea addresses_normal_ht+0x1a63, %r9
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r9)
sub $42672, %r14
lea addresses_WT_ht+0x1c75f, %r11
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r11)
nop
nop
dec %rcx
lea addresses_normal_ht+0x167eb, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%r9), %dl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x14f4f, %r9
nop
xor %rdi, %rdi
mov (%r9), %r14d
cmp %r9, %r9
lea addresses_A_ht+0xa84f, %rsi
lea addresses_normal_ht+0x564f, %rdi
nop
nop
nop
sub $22141, %r11
mov $82, %rcx
rep movsw
xor %rcx, %rcx
lea addresses_A_ht+0x324f, %r14
nop
cmp $2200, %rcx
mov (%r14), %rdx
nop
nop
add $63808, %rcx
lea addresses_normal_ht+0x434f, %r9
clflush (%r9)
add %rdx, %rdx
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
add $42607, %r11
lea addresses_UC_ht+0x19a1f, %r9
nop
cmp $18513, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_WC+0x109ef, %rcx
nop
nop
nop
nop
nop
and %rdx, %rdx
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
cmp %r8, %r8

// Load
lea addresses_A+0x1f227, %rdx
nop
mfence
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
add %r13, %r13

// Faulty Load
lea addresses_US+0x1004f, %r8
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r8), %esi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'00': 2}
00 00
*/
