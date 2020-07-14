.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc9b8, %r8
nop
nop
add %r15, %r15
movl $0x61626364, (%r8)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x1e1b8, %r9
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
nop
and $58775, %r9
lea addresses_A_ht+0x97b4, %rsi
lea addresses_D_ht+0x161b8, %rdi
nop
nop
nop
nop
inc %r8
mov $11, %rcx
rep movsl
nop
add $41345, %rbx
lea addresses_UC_ht+0x5680, %r11
nop
nop
nop
xor $33234, %r15
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x105b8, %rbx
nop
and %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x67c0, %r8
add $61316, %rdi
movups (%r8), %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
cmp $11871, %r9
lea addresses_normal_ht+0x51b8, %rsi
lea addresses_D_ht+0x1c6b8, %rdi
nop
xor %rbx, %rbx
mov $61, %rcx
rep movsb
cmp %rbp, %rbp
lea addresses_WC_ht+0xd28, %rsi
lea addresses_WT_ht+0x4ee8, %rdi
clflush (%rsi)
dec %rbp
mov $62, %rcx
rep movsq
sub $54491, %rcx
lea addresses_WC_ht+0x1aece, %rsi
lea addresses_UC_ht+0x1b658, %rdi
and $18752, %r15
mov $82, %rcx
rep movsq
nop
nop
nop
nop
cmp $20327, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi

// Store
mov $0x1b8, %rcx
nop
sub $33377, %rax
movl $0x51525354, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %r8
cmp %r13, %r13

// Store
lea addresses_A+0x15db8, %r12
nop
nop
cmp %rbx, %rbx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
mov $0x2f621b00000009b8, %rbx
nop
nop
cmp $39404, %rcx
movw $0x5152, (%rbx)
nop
nop
inc %rax

// Store
lea addresses_WT+0x10db8, %r13
clflush (%r13)
dec %r12
mov $0x5152535455565758, %r8
movq %r8, (%r13)
nop
xor %r13, %r13

// Load
lea addresses_normal+0x9c28, %rcx
nop
nop
nop
nop
and $24698, %rax
mov (%rcx), %di
nop
nop
nop
nop
nop
and $13530, %r8

// Store
lea addresses_D+0x129b8, %r8
nop
nop
nop
nop
nop
and $27156, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
mov $0x539ba00000001b8, %rcx
nop
nop
sub %r12, %r12
mov (%rcx), %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'54': 21399, '00': 430}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
