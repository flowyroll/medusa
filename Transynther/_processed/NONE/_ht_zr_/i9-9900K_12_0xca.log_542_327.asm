.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18f1d, %r13
nop
nop
sub %r15, %r15
movb (%r13), %r12b
nop
nop
nop
and $6523, %r8
lea addresses_A_ht+0x17378, %rdx
nop
add $24684, %rax
mov (%rdx), %cx
nop
nop
sub $22361, %rax
lea addresses_UC_ht+0x11d78, %r12
cmp $26601, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
inc %rcx
lea addresses_WT_ht+0xc072, %r15
nop
nop
nop
add $54089, %r13
movl $0x61626364, (%r15)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x1978, %rdx
add %r15, %r15
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rcx
add $38876, %r15
lea addresses_WT_ht+0x10ff8, %r12
inc %rcx
movb (%r12), %al
inc %rcx
lea addresses_A_ht+0x8778, %rsi
lea addresses_normal_ht+0xfd78, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $53, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x1ec78, %rsi
lea addresses_WC_ht+0x64f8, %rdi
nop
nop
add %rdx, %rdx
mov $15, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0xe4cc, %rsi
lea addresses_WT_ht+0x1e3d0, %rdi
nop
nop
nop
nop
nop
xor $58834, %r15
mov $102, %rcx
rep movsl
nop
nop
nop
nop
nop
and $34529, %r8
lea addresses_WC_ht+0x6de8, %r13
nop
nop
and $50178, %r12
movl $0x61626364, (%r13)
nop
nop
nop
sub $29086, %rax
lea addresses_WC_ht+0x12578, %rdi
nop
xor %rsi, %rsi
mov (%rdi), %r15
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x10c4c, %rsi
nop
nop
nop
sub %rdx, %rdx
mov (%rsi), %di
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x11978, %rsi
lea addresses_WC_ht+0xbd78, %rdi
and $63215, %r13
mov $69, %rcx
rep movsq
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0xc178, %rax
nop
nop
nop
nop
xor $49942, %rbp
movw $0x5152, (%rax)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_WC+0x111c4, %rbx
and %rcx, %rcx
movl $0x51525354, (%rbx)
nop
nop
and $47877, %rbp

// Store
lea addresses_UC+0x96cc, %rdx
nop
dec %r13
movw $0x5152, (%rdx)
nop
nop
inc %rbx

// Store
lea addresses_WC+0x11a78, %rsi
nop
nop
and %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_WT+0xd66a, %rdx
add $30322, %rsi
movl $0x51525354, (%rdx)
cmp $59175, %rbx

// Load
lea addresses_WC+0x12d78, %rcx
nop
cmp $60995, %rbp
mov (%rcx), %r13w
and $13721, %rsi

// Store
lea addresses_UC+0xf178, %rsi
clflush (%rsi)
nop
nop
inc %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movaps %xmm7, (%rsi)
add %rsi, %rsi

// Store
lea addresses_normal+0xdf77, %rbp
nop
nop
nop
nop
and %rax, %rax
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_WC+0x12d78, %r13
inc %rdx
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': True, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'45': 11, '00': 531}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
