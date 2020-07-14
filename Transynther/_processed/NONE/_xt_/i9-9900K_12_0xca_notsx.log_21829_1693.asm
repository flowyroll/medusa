.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14dad, %r9
nop
add %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r9)
nop
and %rax, %rax
lea addresses_UC_ht+0x11707, %rsi
lea addresses_A_ht+0x2607, %rdi
nop
cmp %r8, %r8
mov $31, %rcx
rep movsq
cmp %r8, %r8
lea addresses_WT_ht+0xe207, %rax
nop
nop
nop
sub %r9, %r9
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
xor $19250, %rax
lea addresses_normal_ht+0x10d77, %rcx
sub $57415, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x1e07, %rsi
lea addresses_WT_ht+0x1c207, %rdi
xor $44853, %r9
mov $78, %rcx
rep movsw
sub %r11, %r11
lea addresses_WT_ht+0x1a5c, %r9
nop
nop
and $1621, %rdi
mov (%r9), %ax
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0xe807, %rbp
nop
add %rdi, %rdi
movb (%rbp), %al
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x13a07, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rdi)
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x176b7, %rcx
nop
nop
nop
nop
and %r8, %r8
mov (%rcx), %bp
nop
nop
lfence
lea addresses_WC_ht+0x7207, %r8
nop
nop
nop
nop
and $42894, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
cmp $16687, %rcx
lea addresses_normal_ht+0x367, %rsi
lea addresses_A_ht+0x2e07, %rdi
nop
xor $22821, %r8
mov $85, %rcx
rep movsw
nop
nop
nop
nop
and $15013, %r9
lea addresses_D_ht+0x6d07, %rax
nop
nop
nop
nop
and $50168, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rax)
nop
inc %rbp
lea addresses_UC_ht+0x4e07, %r8
nop
nop
nop
nop
nop
and $55281, %rbp
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
cmp %r8, %r8
lea addresses_normal_ht+0x7e07, %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
cmp $2100, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1ae07, %r9
nop
nop
nop
nop
nop
mfence
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
and $38145, %r9

// Load
lea addresses_RW+0x1bf0f, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
inc %r9
mov (%rdx), %edi
nop
nop
nop
nop
nop
and $20993, %rdi

// Store
lea addresses_D+0xee0d, %rcx
nop
nop
nop
sub %rbx, %rbx
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
inc %r10

// REPMOV
lea addresses_A+0x4a07, %rsi
lea addresses_D+0xe007, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $24, %rcx
rep movsb
nop
add %rdx, %rdx

// Store
lea addresses_normal+0x547, %rdx
nop
dec %rbx
movw $0x5152, (%rdx)
nop
sub %r9, %r9

// Store
lea addresses_D+0xe7, %rdx
nop
nop
nop
nop
nop
cmp $20678, %rbx
movb $0x51, (%rdx)
nop
nop
nop
nop
inc %r12

// Store
lea addresses_PSE+0x43d6, %r12
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_PSE+0x6b27, %r10
nop
nop
nop
xor %rsi, %rsi
movb $0x51, (%r10)
nop
nop
nop
add $48574, %rdi

// Load
lea addresses_D+0x1fe07, %rcx
nop
nop
nop
nop
nop
and $5819, %rdx
mov (%rcx), %rsi
nop
nop
nop
nop
nop
add $38121, %rbx

// Faulty Load
lea addresses_UC+0xd607, %r12
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r12), %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A'}, 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
