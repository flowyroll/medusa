.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1a28e, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm7
movups %xmm7, (%rdi)
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x1b194, %r8
nop
nop
nop
nop
nop
sub %rdx, %rdx
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0xc549, %rsi
lea addresses_A_ht+0x133a4, %rdi
nop
nop
nop
inc %r9
mov $11, %rcx
rep movsb
nop
nop
nop
nop
nop
add $15826, %rsi
lea addresses_D_ht+0x96d4, %r11
nop
nop
nop
nop
cmp %rcx, %rcx
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
and $53068, %rbx
lea addresses_D_ht+0x18ca4, %rdx
nop
xor %rdi, %rdi
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
xor $55492, %rcx
lea addresses_WT_ht+0x1a494, %r15
clflush (%r15)
nop
nop
nop
nop
sub $60135, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r15)
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x15f94, %r11
clflush (%r11)
nop
xor $54528, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r11)
xor $45611, %rdx
lea addresses_WT_ht+0x842a, %rdi
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdi)
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1d2ec, %r11
nop
nop
nop
nop
sub $63903, %r8
mov $0x6162636465666768, %r9
movq %r9, (%r11)
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x10c88, %rsi
lea addresses_WC_ht+0x9a2c, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $81, %rcx
rep movsb
nop
nop
sub $12388, %rcx
lea addresses_D_ht+0x2b74, %rbx
nop
nop
nop
nop
nop
cmp $49773, %rdi
mov (%rbx), %r15w
and $16578, %r11
lea addresses_A_ht+0x7ec4, %r11
nop
nop
add $1450, %rdi
movups (%r11), %xmm1
vpextrq $0, %xmm1, %rbx
add %rsi, %rsi
lea addresses_normal_ht+0x11a1a, %rsi
lea addresses_WT_ht+0x1384c, %rdi
clflush (%rsi)
add $43079, %r8
mov $44, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $63002, %rdi
lea addresses_WT_ht+0x1837, %rsi
lea addresses_UC_ht+0x7114, %rdi
nop
nop
nop
nop
nop
sub $12209, %r15
mov $86, %rcx
rep movsb
and $17918, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_D+0x1f794, %rcx
nop
nop
dec %r12
movl $0x51525354, (%rcx)
nop
nop
nop
sub $38346, %r9

// Faulty Load
lea addresses_D+0x1f794, %r8
cmp %r10, %r10
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'36': 21}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
