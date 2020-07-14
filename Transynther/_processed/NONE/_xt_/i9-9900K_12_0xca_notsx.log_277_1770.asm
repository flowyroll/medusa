.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c3b7, %rsi
lea addresses_WC_ht+0x106a9, %rdi
nop
nop
inc %r10
mov $93, %rcx
rep movsw
nop
nop
and %r14, %r14
lea addresses_A_ht+0x15069, %rsi
lea addresses_D_ht+0xc939, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $2, %rcx
rep movsq
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0xc47b, %r14
nop
and %rdi, %rdi
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x5adb, %r10
cmp $51441, %rbx
movw $0x6162, (%r10)
nop
nop
nop
nop
and $38040, %r14
lea addresses_WT_ht+0x12869, %rsi
clflush (%rsi)
nop
nop
nop
nop
add %r12, %r12
movw $0x6162, (%rsi)
cmp %rdi, %rdi
lea addresses_WT_ht+0x51a9, %rdi
nop
sub %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
dec %rsi
lea addresses_WT_ht+0xbf49, %r10
nop
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%r10)
nop
nop
nop
nop
inc %rbx
lea addresses_D_ht+0x18da9, %rsi
lea addresses_WC_ht+0x11fa9, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $42610, %r13
mov $42, %rcx
rep movsw
nop
and $7269, %rcx
lea addresses_WT_ht+0x13211, %rbx
nop
nop
nop
and %r14, %r14
mov (%rbx), %r12w
nop
nop
nop
nop
nop
add $43372, %r12
lea addresses_A_ht+0x123e9, %r12
nop
sub %r10, %r10
movl $0x61626364, (%r12)
nop
nop
sub $6716, %r14
lea addresses_WC_ht+0x61a9, %rdi
nop
nop
xor %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x5e49, %rsi
nop
nop
nop
nop
cmp $53132, %r13
mov (%rsi), %rdi
cmp $23777, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rbx
push %rsi

// Store
mov $0x7478890000000749, %r13
nop
nop
nop
nop
nop
sub $6308, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_WT+0x1e1a9, %r11
nop
and $33437, %r10
movb (%r11), %al
nop
nop
nop
add $26422, %r13

// Store
mov $0x5a9, %r15
nop
nop
nop
nop
cmp $9031, %rax
movl $0x51525354, (%r15)
nop
nop
nop
nop
xor $31378, %r13

// Load
lea addresses_WT+0x1e1a9, %r13
nop
nop
dec %rsi
movb (%r13), %bl
nop
nop
xor %r15, %r15

// Store
lea addresses_US+0x2da9, %r10
sub %rbx, %rbx
movl $0x51525354, (%r10)
nop
nop
add $41780, %r11

// Faulty Load
lea addresses_WT+0x1e1a9, %r13
nop
nop
nop
nop
nop
inc %rbx
movb (%r13), %r10b
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'39': 277}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
