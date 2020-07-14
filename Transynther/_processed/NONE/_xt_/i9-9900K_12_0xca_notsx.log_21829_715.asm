.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x8501, %rbx
nop
nop
and $60881, %rdx
movb (%rbx), %r11b
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x11700, %r15
and $47955, %r13
mov (%r15), %r12
nop
nop
nop
nop
add %r15, %r15
lea addresses_A_ht+0xf5ff, %r12
nop
nop
nop
nop
sub %rbx, %rbx
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rax
xor $54220, %r13
lea addresses_WT_ht+0x1a5c7, %rax
nop
nop
nop
nop
cmp $39047, %r12
movb $0x61, (%rax)
nop
nop
nop
nop
xor $60295, %r11
lea addresses_WT_ht+0x25c7, %rsi
lea addresses_WT_ht+0x141c7, %rdi
nop
xor %rax, %rax
mov $12, %rcx
rep movsw
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x3387, %rsi
lea addresses_WT_ht+0x45c7, %rdi
add $24400, %r13
mov $113, %rcx
rep movsq
nop
nop
nop
nop
and $65357, %rdi
lea addresses_WC_ht+0x76b3, %rsi
lea addresses_D_ht+0x2307, %rdi
xor $12878, %r13
mov $80, %rcx
rep movsl
add $4512, %r15
lea addresses_WC_ht+0x1b1cc, %r12
clflush (%r12)
dec %rbx
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x10ec7, %rcx
nop
nop
inc %r13
mov (%rcx), %ebx
nop
sub %r11, %r11
lea addresses_normal_ht+0x537, %rbx
xor %rsi, %rsi
movb $0x61, (%rbx)
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x76c7, %rsi
lea addresses_WC_ht+0x1e467, %rdi
nop
nop
nop
inc %r13
mov $59, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $11618, %rcx
lea addresses_UC_ht+0x1828f, %rbx
and %rax, %rax
mov (%rbx), %r12d
nop
nop
nop
nop
nop
sub $23003, %r12
lea addresses_D_ht+0x1e7c7, %rdi
nop
nop
nop
nop
dec %rbx
movb $0x61, (%rdi)
xor %rdx, %rdx
lea addresses_WT_ht+0xcfc7, %rsi
lea addresses_normal_ht+0x850f, %rdi
nop
nop
nop
nop
inc %rbx
mov $15, %rcx
rep movsb
nop
and $5425, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0x1c7, %rcx
nop
nop
nop
nop
dec %rbx
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub $56502, %rbx

// Load
lea addresses_PSE+0x35c7, %rax
and %rbp, %rbp
movb (%rax), %cl
nop
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_WC+0x1c6ff, %r14
clflush (%r14)
sub %rdi, %rdi
movb $0x51, (%r14)
nop
cmp %rax, %rax

// Load
mov $0x1d90210000000dc7, %rax
add $44967, %rbx
mov (%rax), %rbp
nop
nop
nop
nop
xor %rbx, %rbx

// Load
mov $0x31f, %r8
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov (%r8), %edi
cmp %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x35c7, %r8
nop
nop
cmp %r14, %r14
mov (%r8), %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
