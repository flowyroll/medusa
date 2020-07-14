.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16692, %r12
clflush (%r12)
nop
and %r14, %r14
mov (%r12), %rax
sub $46001, %r11
lea addresses_D_ht+0x4b02, %rdi
nop
nop
nop
and $16948, %r15
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
and $65170, %r11
lea addresses_A_ht+0x15c42, %r14
nop
nop
nop
nop
cmp %r11, %r11
mov (%r14), %rdi
nop
nop
nop
nop
cmp $17318, %r12
lea addresses_D_ht+0x12a42, %r14
nop
nop
nop
sub %rax, %rax
mov (%r14), %r15w
nop
nop
and $28321, %r12
lea addresses_UC_ht+0x18242, %rax
nop
nop
nop
nop
and %r9, %r9
movw $0x6162, (%rax)
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x12ee2, %r11
nop
nop
nop
xor %r15, %r15
mov (%r11), %r9d
nop
nop
nop
xor $57721, %r15
lea addresses_WC_ht+0x1ddc2, %rsi
lea addresses_D_ht+0x19210, %rdi
nop
nop
nop
and %r14, %r14
mov $114, %rcx
rep movsw
xor $58752, %rcx
lea addresses_normal_ht+0xea42, %r15
nop
nop
nop
nop
nop
and $16494, %r14
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
xor $10607, %rsi
lea addresses_WC_ht+0x14382, %rsi
lea addresses_normal_ht+0x18d42, %rdi
clflush (%rsi)
add %rax, %rax
mov $48, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $62717, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x75c2, %rsi
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_D+0x866e, %rbx
nop
nop
cmp $60527, %r9
movb (%rbx), %al
nop
xor $29152, %r9

// Store
lea addresses_A+0x2a42, %r10
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_WT+0x1d242, %rax
nop
nop
sub $56184, %r10
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'44': 1947, '46': 8, '00': 7835, '48': 12039}
48 48 00 00 48 48 48 00 48 44 48 44 44 48 00 00 44 00 44 48 00 48 48 48 00 44 48 44 00 00 48 00 48 48 48 44 48 44 48 44 48 44 48 44 48 44 00 44 48 44 00 00 44 44 48 44 48 44 00 44 48 48 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 48 48 48 48 00 48 00 48 00 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 48 44 48 44 48 44 48 44 48 44 48 44 48 44 48 44 48 44 48 44 00 44 00 00 48 48 48 44 00 00 48 44 48 44 48 44 48 44 00 00 44 44 48 44 48 44 48 44 48 44 48 44 48 44 48 44 48 44 48 44 00 44 00 00 44 48 00 48 48 48 48 00 48 00 48 00 48 00 48 00 44 00 48 00 48 00 48 00 48 00 48 00 48 48 48 48 00 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 44 48 48 48 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 48 48 00 48 00 48 00 44 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 48 48 00 48 00 48 48 48 48 00 48 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 44 00 00 48 48 00 00 44 44 00 48 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 44 48 48 00 48 48 48 00 48 00 48 00 48 00 48 48 48 48 48 00 48 00 48 00 48 48 48 00 48 48 48 48 48 00 48 48 00 48 00 48 00 00 00 48 48 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 44 00 48 00 48 00 48 00 48 48 48 00 48 00 48 48 48 00 44 00 48 00 48 48 00 44 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 48 00 44 00 44 00 48 00 44 48 48 44 00 48 44 48 48 00 48 00 48 00 48 00 48 48 00 48 00 48 00 48 48 00 48 00 48 00 48 48 48 00 48 00 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 48 48 00 00 48 00 48 44 00 48 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 48 48 00 48 00 48 00 48 00 48 48 48 00 48 48 48 00 48 00 48 00 48 48 48 48 00 44 48 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 00 48 48 00 44 48 48 00 48 00 48 00 48 00 48 00 48 00 44 00 48 00 48 00 48 48 48 00 48 00 48 44 44 48 44 48 44 00 48 48 00 00 44 00 48 48 44 48 00 48 48 00 00 48 44 00 00 44 44 48 44 48 44 48 44 48 44 48 44 48 00 44 48 48 00 48 00 48 00 48 48 48 00 48 00 00 48 44 48 44 48 44 48 44 00 48 48 00 48 00 48 00 48 48 48 00 48 00 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 48 48 48 00 48 00 48 44 00 48 00 48 48 00 48 48 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 44 48 48 48 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00
*/
