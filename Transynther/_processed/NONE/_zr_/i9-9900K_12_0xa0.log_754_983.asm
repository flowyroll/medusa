.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x930a, %rsi
lea addresses_D_ht+0x17bde, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $43486, %rbx
mov $113, %rcx
rep movsw
nop
nop
nop
nop
inc %rbp
lea addresses_D_ht+0x8f94, %r14
and $20105, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
add $48913, %r14
lea addresses_WC_ht+0x5114, %rdi
nop
nop
nop
inc %r12
movl $0x61626364, (%rdi)
nop
nop
nop
xor $43621, %rcx
lea addresses_D_ht+0xb90a, %rsi
lea addresses_normal_ht+0x7814, %rdi
xor $27041, %r13
mov $29, %rcx
rep movsl
inc %rdi
lea addresses_UC_ht+0x12db4, %rsi
lea addresses_WT_ht+0xbdd4, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $59, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1ba14, %r14
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rdi
and $17185, %rdi
lea addresses_normal_ht+0xac14, %rbx
and $30115, %rsi
movb $0x61, (%rbx)
nop
nop
nop
add $11023, %r12
lea addresses_normal_ht+0x7b04, %rsi
lea addresses_D_ht+0x17bf4, %rdi
nop
nop
inc %r13
mov $3, %rcx
rep movsw
nop
nop
nop
nop
nop
and $23345, %rdi
lea addresses_A_ht+0x6b14, %rsi
lea addresses_normal_ht+0x10294, %rdi
sub $53451, %r13
mov $121, %rcx
rep movsl
nop
nop
nop
nop
xor $10494, %rbx
lea addresses_A_ht+0xda14, %rsi
lea addresses_D_ht+0x3c18, %rdi
nop
inc %r12
mov $60, %rcx
rep movsq
nop
nop
nop
nop
cmp $11598, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Load
lea addresses_PSE+0x1414, %r9
nop
nop
cmp %r10, %r10
mov (%r9), %si
nop
nop
nop
add %rax, %rax

// Load
lea addresses_UC+0x3f94, %r8
nop
nop
nop
xor %r11, %r11
mov (%r8), %r10
nop
cmp $23892, %rax

// Store
lea addresses_PSE+0xb814, %r10
nop
nop
nop
nop
and $46593, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_normal+0xee74, %rax
nop
dec %rsi
movb $0x51, (%rax)
nop
nop
nop
add %r9, %r9

// Store
lea addresses_A+0x1e6c4, %rcx
clflush (%rcx)
nop
nop
sub $45175, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%rcx)
and $58291, %rax

// Load
lea addresses_WT+0x11b14, %rsi
nop
nop
nop
nop
nop
inc %r10
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
nop
xor $21630, %r9

// Store
mov $0xe14, %r11
clflush (%r11)
nop
nop
nop
xor %r8, %r8
movb $0x51, (%r11)
xor %r9, %r9

// Faulty Load
lea addresses_A+0xc414, %r10
nop
cmp $17599, %r8
mov (%r10), %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'00': 754}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
