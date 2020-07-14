.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x11209, %rsi
add $11401, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rsi)
cmp $28240, %rbp
lea addresses_UC_ht+0xc00, %r11
nop
nop
nop
nop
nop
and $37660, %rdi
mov (%r11), %rbp
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x17b20, %rsi
nop
nop
nop
nop
nop
dec %rdx
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r11
nop
and $47259, %r11
lea addresses_UC_ht+0x14708, %rsi
lea addresses_D_ht+0x18800, %rdi
nop
nop
dec %rbx
mov $103, %rcx
rep movsw
nop
xor $21221, %rsi
lea addresses_UC_ht+0xb8a0, %rbp
nop
sub $55997, %rdi
mov (%rbp), %r11w
nop
nop
nop
nop
sub $63829, %rbp
lea addresses_D_ht+0xa188, %rbx
nop
sub %r13, %r13
movw $0x6162, (%rbx)
nop
nop
nop
cmp $10723, %rsi
lea addresses_normal_ht+0x16e18, %r13
nop
lfence
mov (%r13), %di
add $31773, %rsi
lea addresses_D_ht+0x19e00, %rsi
lea addresses_normal_ht+0xb500, %rdi
nop
nop
add %r11, %r11
mov $111, %rcx
rep movsb
nop
nop
nop
cmp $48284, %r13
lea addresses_D_ht+0x16f60, %rsi
lea addresses_normal_ht+0x121c0, %rdi
nop
nop
nop
xor $954, %rbx
mov $109, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_WT_ht+0x19100, %rdx
sub %rbp, %rbp
mov (%rdx), %r11d
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x12e00, %rcx
nop
nop
dec %rsi
movb (%rcx), %bl
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x6900, %r13
nop
nop
nop
nop
cmp $40673, %rsi
mov (%r13), %rdi
nop
nop
nop
nop
nop
add $1442, %rbp
lea addresses_UC_ht+0xaf00, %rbx
nop
xor $17137, %r11
movb (%rbx), %cl
nop
nop
nop
add $44966, %r11
lea addresses_WC_ht+0xd9e0, %rdi
clflush (%rdi)
and %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
dec %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x417f160000000600, %r12
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
add %r10, %r10

// Store
lea addresses_A+0x5e78, %rbx
clflush (%rbx)
nop
xor %rdi, %rdi
movl $0x51525354, (%rbx)
sub $2169, %rdi

// Store
lea addresses_D+0x5658, %rcx
nop
nop
cmp %r15, %r15
movb $0x51, (%rcx)
nop
sub $54479, %rdx

// Faulty Load
lea addresses_PSE+0x3900, %r12
clflush (%r12)
sub %rcx, %rcx
movups (%r12), %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'33': 378}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
