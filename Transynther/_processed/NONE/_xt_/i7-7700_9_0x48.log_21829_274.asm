.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x3d8d, %rsi
lea addresses_WC_ht+0x1818d, %rdi
nop
nop
add %rdx, %rdx
mov $73, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $2259, %r8
lea addresses_WC_ht+0x1dd8d, %rdi
clflush (%rdi)
nop
and $38034, %rbx
movb (%rdi), %r8b
add $31827, %rsi
lea addresses_normal_ht+0x1678d, %rdi
nop
nop
nop
nop
sub %rax, %rax
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x1718d, %rsi
nop
nop
nop
nop
nop
xor $18318, %rdx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
nop
nop
cmp $30099, %rdi
lea addresses_UC_ht+0x518d, %r8
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
cmp $33015, %rsi
lea addresses_WC_ht+0x420d, %rbx
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x338d, %rsi
lea addresses_WC_ht+0x6de3, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $31853, %rdx
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $605, %rax
lea addresses_A_ht+0x1798d, %rbx
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, (%rbx)
nop
inc %rax
lea addresses_normal_ht+0x1a98d, %rax
nop
nop
cmp $17071, %r8
movw $0x6162, (%rax)
add $60050, %rsi
lea addresses_normal_ht+0xe18d, %rbx
nop
cmp $53167, %rdi
mov (%rbx), %dx
nop
nop
dec %rdx
lea addresses_D_ht+0xd14d, %rax
clflush (%rax)
nop
sub %rsi, %rsi
movl $0x61626364, (%rax)
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0xef8d, %rdx
nop
nop
nop
nop
xor $3682, %rax
mov (%rdx), %r8d
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0xe2d9, %rdx
nop
nop
nop
cmp %rax, %rax
mov (%rdx), %si
add %rcx, %rcx
lea addresses_normal_ht+0x1c18d, %rbx
nop
nop
nop
nop
nop
sub $9898, %rsi
movb (%rbx), %cl
nop
nop
nop
and $6560, %rdx
lea addresses_WT_ht+0x178d, %rsi
lea addresses_UC_ht+0x1a18d, %rdi
nop
add %rax, %rax
mov $122, %rcx
rep movsb
sub %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1e7cd, %rsi
mov $0xf39, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $75, %rcx
rep movsb
nop
xor $35588, %rsi

// Load
mov $0x4c4b200000000d8d, %rcx
nop
add $30385, %r11
movb (%rcx), %r9b
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_WC+0x1318d, %r11
nop
dec %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
cmp %r8, %r8

// Store
lea addresses_normal+0x15bd, %r11
nop
cmp $55550, %r9
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
and $48659, %r8

// Store
mov $0xb4d, %r11
cmp %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
nop
add $43099, %r10

// Faulty Load
lea addresses_normal+0x198d, %r10
clflush (%r10)
nop
cmp $63993, %rdi
mov (%r10), %esi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 4, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
