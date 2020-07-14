.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x711f, %rdx
nop
nop
nop
inc %rsi
mov (%rdx), %r13d
sub $46734, %r15
lea addresses_A_ht+0x1997d, %rbp
nop
nop
nop
cmp $60506, %rdi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xdb9f, %r15
nop
nop
nop
nop
nop
cmp $64153, %r12
mov (%r15), %di
nop
add $12657, %rsi
lea addresses_WT_ht+0x709f, %r13
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x153cf, %rsi
lea addresses_D_ht+0x11b1f, %rdi
nop
nop
xor $24667, %r15
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x76bf, %rdi
xor %rdx, %rdx
movl $0x61626364, (%rdi)
and %r12, %r12
lea addresses_normal_ht+0x76cf, %rdx
nop
nop
nop
and $50978, %rcx
movw $0x6162, (%rdx)
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x15d9f, %rdx
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
sub %r13, %r13
lea addresses_WT_ht+0xb11f, %rsi
lea addresses_UC_ht+0x1859f, %rdi
nop
cmp $30859, %rbp
mov $30, %rcx
rep movsb
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x157f3, %rdi
nop
nop
nop
nop
nop
cmp $46970, %r13
mov (%rdi), %r12d
nop
nop
add $15422, %r15
lea addresses_A_ht+0xd18f, %rsi
lea addresses_normal_ht+0x1a43f, %rdi
nop
nop
nop
nop
nop
sub $13650, %r13
mov $29, %rcx
rep movsw
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x231f, %rdx
nop
nop
nop
nop
add %rbp, %rbp
movl $0x61626364, (%rdx)
nop
nop
nop
nop
sub $17392, %rsi
lea addresses_WT_ht+0x181cf, %rsi
lea addresses_A_ht+0x804f, %rdi
add $11258, %rdx
mov $69, %rcx
rep movsb
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x15f, %r11
nop
cmp $15194, %r12
movb $0x51, (%r11)
nop
nop
sub %r11, %r11

// Load
lea addresses_D+0x61df, %r14
nop
nop
nop
nop
nop
dec %rdx
mov (%r14), %cx
nop
nop
nop
and $56096, %rcx

// Store
lea addresses_D+0xd84f, %r14
nop
nop
sub %r9, %r9
movl $0x51525354, (%r14)
sub %rbx, %rbx

// Load
lea addresses_WC+0x143ff, %r12
nop
dec %rbx
mov (%r12), %dx
nop
nop
nop
nop
nop
sub $7234, %r11

// Store
mov $0x841, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rcx)
nop
cmp %rdx, %rdx

// Store
lea addresses_US+0x7acf, %r14
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_A+0x43f, %rdx
nop
nop
nop
cmp $14133, %r9
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
nop
nop
nop
cmp $62611, %rdx

// Load
lea addresses_US+0xe330, %rdx
and %rcx, %rcx
mov (%rdx), %r14
add $882, %rbx

// Store
lea addresses_UC+0x1a71, %rbx
nop
inc %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
and $4436, %r11

// Store
lea addresses_WC+0x14167, %rdx
dec %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_PSE+0x931f, %r11
nop
nop
nop
nop
add $30814, %rbx
movb $0x51, (%r11)
nop
nop
nop
nop
and $2235, %r9

// Load
lea addresses_UC+0x1049f, %rbx
nop
nop
nop
xor %r14, %r14
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_PSE+0x931f, %r11
nop
nop
nop
add %rdx, %rdx
movb (%r11), %r9b
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
