.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc9ea, %rsi
lea addresses_WC_ht+0x1ddd2, %rdi
cmp %r11, %r11
mov $33, %rcx
rep movsw
nop
nop
nop
nop
and $33193, %r10
lea addresses_WT_ht+0x51a, %rax
nop
nop
add $53978, %r13
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
add $24045, %r13
lea addresses_WT_ht+0x601a, %rsi
lea addresses_D_ht+0x629a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
inc %rbx
mov $30, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1d35a, %rsi
lea addresses_D_ht+0x1106c, %rdi
add %rax, %rax
mov $47, %rcx
rep movsb
sub $26494, %r10
lea addresses_D_ht+0xf9da, %rsi
lea addresses_normal_ht+0x5dda, %rdi
nop
nop
nop
nop
nop
sub $24899, %r10
mov $58, %rcx
rep movsl
nop
nop
cmp $42312, %rax
lea addresses_WT_ht+0x1d18a, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x13478, %rsi
lea addresses_WC_ht+0xc38a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $69, %rcx
rep movsw
nop
nop
nop
nop
add $23267, %rdi
lea addresses_UC_ht+0xf7da, %r10
and %r13, %r13
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm1
vpextrq $0, %xmm1, %rax
cmp $27448, %rsi
lea addresses_WC_ht+0x7d90, %rsi
lea addresses_WC_ht+0x188da, %rdi
nop
nop
nop
and $16966, %rbx
mov $74, %rcx
rep movsb
cmp %rcx, %rcx
lea addresses_UC_ht+0xb16a, %rsi
lea addresses_normal_ht+0x6d9a, %rdi
nop
nop
xor $42302, %r11
mov $116, %rcx
rep movsq
nop
nop
nop
nop
and $53523, %r10
lea addresses_normal_ht+0x1a9da, %rcx
sub $11443, %r13
mov (%rcx), %si
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0x42c1be00000003ba, %r8
nop
nop
nop
nop
add $45631, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
xor %rbp, %rbp

// Load
mov $0x2afb9000000008da, %r8
nop
nop
nop
nop
cmp $64290, %rbp
movups (%r8), %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
dec %rdi

// Store
lea addresses_A+0x91da, %r8
nop
nop
nop
nop
sub %r9, %r9
movw $0x5152, (%r8)
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_PSE+0xb3da, %r11
nop
nop
nop
dec %r8
movb $0x51, (%r11)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_UC+0x10642, %r8
nop
xor %r11, %r11
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
add $63446, %rcx

// Load
lea addresses_RW+0x1f70, %rbp
clflush (%rbp)
nop
sub %r9, %r9
movb (%rbp), %r11b
nop
nop
nop
nop
nop
and $47659, %rbx

// Faulty Load
lea addresses_PSE+0xb5da, %rbp
nop
nop
xor %r11, %r11
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'33': 47}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
