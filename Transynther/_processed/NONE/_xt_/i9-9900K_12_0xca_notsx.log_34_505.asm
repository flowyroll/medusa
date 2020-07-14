.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf4db, %rbx
nop
nop
nop
nop
nop
cmp $43514, %r9
mov (%rbx), %bp
nop
cmp %r9, %r9
lea addresses_UC_ht+0x54b7, %rsi
lea addresses_normal_ht+0x2a93, %rdi
cmp $5808, %r14
mov $30, %rcx
rep movsl
nop
nop
nop
add $58207, %rbx
lea addresses_normal_ht+0x13813, %rbx
inc %rcx
movw $0x6162, (%rbx)
sub %rbx, %rbx
lea addresses_WT_ht+0xfe7f, %rcx
nop
nop
nop
nop
nop
and $8673, %r9
mov (%rcx), %edi
nop
nop
xor $48962, %rbp
lea addresses_WC_ht+0x1cda3, %rsi
lea addresses_WC_ht+0x13851, %rdi
nop
and $30234, %r13
mov $0, %rcx
rep movsq
nop
nop
nop
nop
sub $37307, %rbp
lea addresses_normal_ht+0x10813, %r13
nop
nop
nop
nop
inc %rbx
movl $0x61626364, (%r13)
nop
inc %rcx
lea addresses_normal_ht+0x9a63, %rsi
lea addresses_D_ht+0x18a9d, %rdi
clflush (%rdi)
nop
add %r9, %r9
mov $108, %rcx
rep movsl
nop
nop
nop
xor $46330, %rdi
lea addresses_WT_ht+0x7311, %r13
nop
nop
nop
nop
nop
add %rbp, %rbp
movw $0x6162, (%r13)
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x17813, %rsi
lea addresses_D_ht+0xab13, %rdi
nop
nop
nop
nop
cmp $13852, %r9
mov $49, %rcx
rep movsb
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0xe573, %rbp
nop
nop
nop
and $62166, %rdi
mov (%rbp), %r9
nop
nop
nop
nop
sub $47278, %rsi
lea addresses_WC_ht+0x1b6d9, %rsi
lea addresses_WT_ht+0x9c93, %rdi
nop
nop
mfence
mov $70, %rcx
rep movsq
nop
add %rcx, %rcx
lea addresses_UC_ht+0x17013, %r9
nop
nop
nop
cmp $4125, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x55cf, %rbp
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rbp)
nop
xor %r9, %r9
lea addresses_normal_ht+0xf9db, %r14
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
add $20194, %rbx
lea addresses_D_ht+0x13b93, %rsi
lea addresses_D_ht+0x1bd13, %rdi
nop
and $57525, %rbx
mov $114, %rcx
rep movsl
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1dd93, %r11
nop
nop
xor $59220, %rbx
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_A+0x1d613, %r13
clflush (%r13)
inc %rbx
mov $0x5152535455565758, %r14
movq %r14, (%r13)
nop
nop
sub $15932, %r14

// Store
lea addresses_D+0x313, %r9
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%r9)
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_WT+0x1f693, %rdx
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovaps %ymm3, (%rdx)
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_D+0x10f13, %rdx
clflush (%rdx)
nop
nop
nop
xor $43319, %rsi
mov (%rdx), %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'36': 34}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
