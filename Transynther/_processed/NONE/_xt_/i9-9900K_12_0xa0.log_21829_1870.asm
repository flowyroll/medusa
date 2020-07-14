.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xa5ee, %r10
nop
nop
nop
nop
sub $54838, %rdi
movups (%r10), %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x18e52, %rsi
lea addresses_WT_ht+0x162a2, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %rax, %rax
mov $23, %rcx
rep movsb
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x196a2, %rsi
lea addresses_UC_ht+0xf8a2, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $54, %rcx
rep movsb
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x196a2, %rsi
nop
nop
nop
nop
nop
cmp %r10, %r10
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
xor $54688, %rax
lea addresses_normal_ht+0x636, %rdi
nop
nop
nop
nop
add $14515, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x138a2, %rcx
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
add $12318, %rsi
lea addresses_A_ht+0x4a52, %rdx
nop
nop
nop
nop
nop
cmp $16865, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
xor $44930, %rax
lea addresses_WT_ht+0x167d2, %rax
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
nop
and $61665, %rdi
lea addresses_D_ht+0x97da, %rcx
add %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm6
and $0xffffffffffffffc0, %rcx
vmovaps %ymm6, (%rcx)
nop
nop
cmp $64180, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0x17622, %r11
nop
nop
nop
nop
cmp $62210, %r8
movw $0x5152, (%r11)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rsi
inc %rdi

// Store
lea addresses_RW+0x1183d, %rsi
add $13681, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%rsi)

// Exception!!!
nop
nop
mov (0), %rdx
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_normal+0x2b22, %rdi
sub %r11, %r11
movb $0x51, (%rdi)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x156b2, %r12
nop
nop
nop
nop
and $7274, %rdi
movw $0x5152, (%r12)
dec %r12

// Store
mov $0xf6e, %r12
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_PSE+0x110a2, %r15
nop
nop
dec %r11
movups (%r15), %xmm5
vpextrq $0, %xmm5, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
