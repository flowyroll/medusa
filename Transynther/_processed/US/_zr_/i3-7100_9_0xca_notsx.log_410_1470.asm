.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c230, %rsi
lea addresses_WT_ht+0xcc04, %rdi
nop
nop
nop
nop
nop
cmp $53795, %rax
mov $95, %rcx
rep movsl
nop
cmp $61926, %r9
lea addresses_WC_ht+0x14664, %rsi
lea addresses_WC_ht+0x5fb4, %rdi
nop
nop
nop
nop
nop
add $180, %r9
mov $59, %rcx
rep movsl
nop
nop
nop
nop
sub $11485, %rdi
lea addresses_UC_ht+0xe864, %rsi
lfence
mov (%rsi), %r9
nop
add %r11, %r11
lea addresses_normal_ht+0x17264, %rax
nop
nop
nop
nop
nop
cmp $48479, %r9
movb (%rax), %cl
sub %r9, %r9
lea addresses_normal_ht+0xe434, %rsi
lea addresses_WC_ht+0x9364, %rdi
nop
add $335, %r11
mov $123, %rcx
rep movsb
nop
inc %rdi
lea addresses_normal_ht+0x11664, %r11
cmp $24925, %r14
movb $0x61, (%r11)
nop
nop
nop
nop
nop
add $48737, %rsi
lea addresses_WT_ht+0x6c64, %r9
nop
nop
nop
and $38395, %r14
movb $0x61, (%r9)
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0xaa08, %rax
sub $8931, %r9
movl $0x61626364, (%rax)
nop
nop
dec %r11
lea addresses_D_ht+0x9de4, %rsi
nop
nop
add $45801, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
sub $50005, %r9
lea addresses_WT_ht+0x15ba4, %rsi
nop
nop
xor $35395, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x5864, %rsi
lea addresses_A_ht+0x14aa4, %rdi
add %rax, %rax
mov $96, %rcx
rep movsl
nop
sub $5583, %r14
lea addresses_WT_ht+0x16bb8, %rsi
lea addresses_UC_ht+0x15e64, %rdi
nop
nop
nop
cmp %r11, %r11
mov $3, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $42845, %rdi
lea addresses_A_ht+0x1b664, %r14
nop
nop
nop
nop
inc %r9
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rdx
push %rsi

// Store
mov $0x4d8c490000000254, %rsi
nop
nop
nop
nop
nop
add $3625, %rdx
movw $0x5152, (%rsi)
inc %r8

// Store
lea addresses_PSE+0x138f4, %rdx
nop
nop
add %r12, %r12
movb $0x51, (%rdx)
nop
nop
dec %r11

// Faulty Load
lea addresses_US+0xe664, %r8
xor $51894, %rax
mov (%r8), %r12d
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 410}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
