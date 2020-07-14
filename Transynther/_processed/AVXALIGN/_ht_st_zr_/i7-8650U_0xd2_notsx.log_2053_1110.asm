.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe3b2, %rsi
lea addresses_WT_ht+0x1cdb2, %rdi
nop
nop
and %r8, %r8
mov $95, %rcx
rep movsw
nop
nop
nop
nop
and $41026, %r13
lea addresses_normal_ht+0x134b2, %rbx
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%rbx), %r13
nop
nop
xor $37174, %r13
lea addresses_WT_ht+0x111b2, %rsi
lea addresses_A_ht+0xa9b2, %rdi
nop
nop
and $25468, %rbp
mov $81, %rcx
rep movsl
nop
nop
nop
nop
nop
and $59164, %r8
lea addresses_WC_ht+0x124b2, %rcx
nop
sub $34431, %rbx
mov (%rcx), %rsi
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x2bbf, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $2047, %rcx
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r8
nop
nop
cmp $59266, %rsi
lea addresses_normal_ht+0x1a5b2, %r8
nop
nop
nop
cmp %rcx, %rcx
mov (%r8), %r13d
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x133b0, %r8
clflush (%r8)
nop
nop
inc %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r8)
nop
nop
inc %r8
lea addresses_UC_ht+0x1ebb2, %rbp
nop
and %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rbp)
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x155b2, %rsi
nop
nop
and $3631, %rcx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
and %r8, %r8
lea addresses_A_ht+0x80b2, %rbp
sub %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x18231, %rsi
add %r8, %r8
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
nop
and $4602, %rbp
lea addresses_D_ht+0x1b05e, %rbp
nop
nop
inc %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rbp)
xor %r13, %r13
lea addresses_normal_ht+0x188f2, %rbp
nop
nop
cmp %rcx, %rcx
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
nop
and $30915, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xae92, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r11)
nop
sub %rdx, %rdx

// Store
lea addresses_WC+0x11c92, %rsi
clflush (%rsi)
nop
nop
sub $13014, %r10
movb $0x51, (%rsi)
nop
inc %r13

// Store
lea addresses_normal+0x1e0f2, %rsi
nop
nop
nop
nop
nop
sub %r13, %r13
movw $0x5152, (%rsi)
nop
nop
xor $48873, %r9

// REPMOV
lea addresses_WC+0x12be6, %rsi
lea addresses_A+0x1bf0e, %rdi
nop
nop
nop
add %rdx, %rdx
mov $25, %rcx
rep movsl
nop
nop
cmp $47673, %rdi

// Faulty Load
mov $0x5b2, %rdx
nop
nop
sub $61039, %r11
vmovaps (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'46': 1385, '48': 169, '44': 155, '45': 152, '00': 172, '38': 17, '37': 1, '49': 2}
46 48 46 44 46 46 48 46 46 46 45 46 00 46 46 48 44 00 45 46 46 46 46 45 44 46 46 48 46 44 46 46 48 46 46 00 00 46 45 45 46 46 00 46 46 46 46 38 46 46 44 46 44 46 45 46 46 00 00 48 46 46 00 46 45 00 46 45 45 46 46 46 46 45 44 00 46 45 46 46 46 46 38 00 00 46 45 46 46 45 46 46 46 46 48 46 46 46 46 45 44 46 46 46 46 45 44 46 46 46 46 46 46 46 46 44 46 46 46 46 48 45 46 46 45 46 46 46 46 45 45 46 46 46 46 46 46 46 46 45 48 48 44 46 46 00 46 45 46 46 44 46 48 46 45 46 46 46 44 46 46 46 46 45 46 45 46 46 48 46 44 46 46 44 46 46 46 45 00 44 46 46 44 46 46 38 46 46 00 45 44 46 46 46 46 45 46 46 46 46 46 46 46 46 00 46 46 46 46 45 00 38 46 46 46 46 46 46 44 00 46 46 44 46 46 45 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 48 00 46 48 37 46 46 48 46 46 46 46 44 44 46 46 46 48 46 00 46 46 46 45 46 46 45 46 48 45 46 46 00 00 46 45 46 46 46 46 46 45 44 00 46 46 46 46 48 46 46 46 46 45 46 46 46 46 45 45 46 46 46 45 46 45 46 00 46 46 46 44 48 46 46 46 46 46 46 46 46 46 45 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 00 46 46 46 00 46 48 46 48 46 46 00 48 48 48 46 44 46 46 38 46 44 46 46 46 45 46 48 46 46 48 45 46 46 46 46 46 44 46 48 46 00 46 49 46 46 48 46 46 00 46 44 48 46 46 46 46 46 46 45 00 48 46 46 45 46 46 00 00 46 00 46 46 48 46 46 46 48 48 46 48 46 46 45 45 46 44 46 46 46 46 46 46 46 46 46 46 46 00 48 00 48 46 46 46 46 46 48 46 46 46 44 46 46 46 46 46 46 46 46 48 44 48 46 46 48 46 46 46 46 48 00 46 46 46 46 46 46 46 48 46 45 45 48 46 00 46 44 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 44 46 46 38 46 48 46 46 46 46 46 44 46 46 00 45 48 46 46 00 44 46 46 46 46 46 46 46 44 46 46 48 46 00 46 46 48 46 48 46 46 46 46 44 00 46 46 48 46 46 46 46 46 46 45 46 46 46 44 38 46 46 46 46 46 46 46 46 46 44 00 46 46 46 44 46 46 46 46 46 46 00 46 46 48 45 46 00 46 46 44 46 44 44 46 46 46 46 46 46 46 46 48 46 46 46 46 46 45 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 44 46 46 46 46 48 48 46 46 46 46 46 44 45 00 46 46 00 46 48 46 46 46 46 46 46 46 00 48 46 46 46 46 00 48 46 46 46 44 46 46 46 46 44 46 45 46 46 46 00 46 46 46 44 46 46 45 46 46 46 45 46 00 46 46 44 00 46 45 46 46 46 46 45 46 45 00 00 46 46 46 48 45 00 46 46 46 00 44 48 46 00 48 45 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 00 46 46 46 46 46 46 48 46 46 46 46 44 46 46 44 48 48 46 00 46 46 48 46 46 46 46 46 00 46 46 46 46 00 46 00 46 46 48 46 46 46 44 46 46 46 46 46 46 44 46 48 46 00 46 46 46 00 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 00 46 00 46 48 46 46 46 48 46 46 46 46 46 48 46 00 48 46 46 46 46 46 46 46 46 46 00 46 46 45 46 46 44 46 48 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 48 38 46 46 44 46 46 46 46 46 46 46 46 46 44 46 48 45 46 48 44 46 46 46 46 46 45 46 46 45 44 46 46 46 45 46 46 44 45 46 46 46 46 44 46 46 46 48 46 46 46 46 46 46 46 45 45 46 00 46 46 00 46 46 45 46 00 00 46 46 45 46 46 46 00 46 46 46 46 46 46 46 46 46 00 45 48 46 45 44 46 46 48 46 48 46 46 46 46 46 46 46 45 46 00 46 46 46 46 46
*/
